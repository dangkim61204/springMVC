package controllers;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dao.AccountImpl;
import dao.CategoryDao;
import dao.OrderImpl;
import dao.ProductDao;
import entities.Account;
import entities.Cart;
import entities.Category;
import entities.Page;
import entities.Product;
import util.Cipher;

@Controller
@RequestMapping(value= {"admin"})
public class AdminController {
	@Autowired
	CategoryDao categorydao;
	@Autowired
	ProductDao productdao;
	@Autowired
	AccountImpl accountdao;
	@Autowired
	OrderImpl orderdao;

	
	@RequestMapping(value= {"/"})
	public String admin(Model model) {
		model.addAttribute("page", "home");
		return "Admin";
	}
	
	@RequestMapping(value= {"them-moi"})
	public String add(Model model) {
		model.addAttribute("cate", new Category());
		model.addAttribute("categorys", categorydao.getAll());
		model.addAttribute("page", "category-add");
		return "Admin";
	}
	@RequestMapping(value = "luu", method = RequestMethod.POST)
	public String save(@ModelAttribute("cate") Category cate,  Model model,HttpServletRequest req) {
	
		categorydao.insert(cate);
		return "redirect:/admin/hien-thi-danh-muc";
	}
	
	@RequestMapping(value= {"sua/{id}"}, method = RequestMethod.GET)
	public String edit(Model model, @PathVariable("id") int id) {
		model.addAttribute("categorys", categorydao.getAll());
		model.addAttribute("cate", categorydao.getById(id));
		model.addAttribute("page", "category-edit");
		return "Admin";
	}
	@RequestMapping(value = "cap-nhat", method = RequestMethod.POST)
	public String update(@ModelAttribute("cate") Category cate,  Model model,HttpServletRequest req) {
		System.out.println(cate.getId());
		System.out.println(cate.getName());
		categorydao.update(cate);
		return "redirect:/admin/hien-thi-danh-muc";
	}

	
	
	@RequestMapping(value= {"xoa/{id}"})
	public String delete(Model model, @PathVariable("id") int id) {
		categorydao.delete(id);
		return "redirect:/admin/hien-thi-danh-muc";
	}
	
	
	@RequestMapping(value= {"hien-thi-danh-muc"})
	public String paging(Model model, Integer cateid, Integer pageno) {
		cateid = cateid ==null ? 0 :cateid; 
		pageno = pageno ==null ? 1 :pageno; 
		model.addAttribute("page", "paging-category");
		model.addAttribute("categories", categorydao.getAll());
		model.addAttribute("cateid", cateid);
		Page Paging = categorydao.paging(cateid, pageno, 5);
		model.addAttribute("categorys", Paging.getPros());
		model.addAttribute("totalpage", Paging.getTotalPages());
		model.addAttribute("currentpage", pageno);
		return "Admin";
	}
	
	//Sản phẩm
	

	@RequestMapping(value= {"them-moi-sp"})
	public String add_sp(Model model) {
		model.addAttribute("pro", new Product());
		model.addAttribute("categories", categorydao.getAll());
		model.addAttribute("products", productdao.getAll());
		model.addAttribute("page", "product-add");
		
		return "Admin";
	}
	@RequestMapping(value = "luu-sp", method = RequestMethod.POST)
	public String save_sp(@Valid@ModelAttribute("pro") Product pro, BindingResult result, @RequestParam ("file") MultipartFile file,  Model model,HttpServletRequest req) {
		
		
		if(result.hasErrors()) {
			model.addAttribute("categories", categorydao.getAll());
			model.addAttribute("products", productdao.getAll());
			model.addAttribute("Product",pro);
            model.addAttribute("page", "product-add");
			return "Admin";

			}else

			{
			
				if(file != null && !file.isEmpty()) {
					String uploadRootPath = req.getServletContext().getRealPath("resources/images");
					File destination = new File(uploadRootPath + "/" + file.getOriginalFilename());
					try {
						file.transferTo(destination);
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
					}
					pro.setImage(file.getOriginalFilename());
				}
				pro.setCreatedate(Date.valueOf(LocalDate.now()));
				productdao.insert(pro);
				return "redirect:/admin/hien-thi-san-pham";

			}
		

	}
	
	@RequestMapping(value= {"sua-sp/{id}"}, method = RequestMethod.GET)
	public String edit_sp(Model model, @PathVariable("id") int id) {
		model.addAttribute("categories", categorydao.getAll());
		model.addAttribute("pro", productdao.getById(id));
		model.addAttribute("page", "product-edit");
		return "Admin";
	}
	
	@RequestMapping(value = "cap-nhat-sp", method = RequestMethod.POST)
	public String update_sp(@ModelAttribute("pro") Product pro, String imageold, @RequestParam ("file") MultipartFile file,  Model model,HttpServletRequest req) {
		if(file != null && !file.isEmpty()) {
			String uploadRootPath = req.getServletContext().getRealPath("resources/images");
			File destination = new File(uploadRootPath + "/" + file.getOriginalFilename());
			try {
				file.transferTo(destination);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}

			pro.setImage(file.getOriginalFilename());
		}else {
			pro.setImage(imageold);
		}
		productdao.update(pro);
		return "redirect:/admin/hien-thi-san-pham";
	}

	
	
	@RequestMapping(value= {"xoa-sp/{id}"})
	public String delete_sp(Model model, @PathVariable("id") int id) {
		productdao.delete(id);
		return "redirect:/admin/hien-thi-san-pham";
	}
	
	@RequestMapping(value= {"hien-thi-san-pham"})
	public String paging_sp(Model model, Integer proid, Integer pageno) {
		proid = proid ==null ? 0 :proid; 
		pageno = pageno ==null ? 1 :pageno; 
		model.addAttribute("page", "paging-product");
		model.addAttribute("Products", productdao.getAll());
		model.addAttribute("proid", proid);
		Page Paging = productdao.paging(proid, pageno, 4);
		model.addAttribute("products", Paging.getPros());
		model.addAttribute("totalpage", Paging.getTotalPages());
		model.addAttribute("currentpage", pageno);
		return "Admin";
	}
	
	
	//get admin/login
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(Model model) {
		return "login";
	}
	//posst admin/login(xu li login)
	@RequestMapping(value= {"login"}, method = RequestMethod.POST)
	public String loginAdmin(Model model,  String email, String password, HttpServletRequest req) {
		Account acc = accountdao.getAccount(email);
		String passMd5 = Cipher.GenerateMD5(password);
		
		if(acc == null || !acc.getPassword().equals(passMd5) || !acc.getRole().equals("admin")) {
			model.addAttribute("msg", "Thông tin đăng nhập sai hoặc bạn không có quyền!");
			
			return "login";
		}
		HttpSession session = req.getSession();
		session.setMaxInactiveInterval(3600);
		session.setAttribute("adminid", acc.getId());
		session.setAttribute("name1", acc.getName());
		session.setAttribute("adminphone", acc.getPhone());
		return "redirect:/admin/";
	}

	//GET: admin/logout
		@RequestMapping(value = "logout")
		public String logout(Model model, HttpServletRequest req) {
			HttpSession session = req.getSession();
			session.invalidate();
			
			return "redirect:/admin/login";
		}
		
	//account
		@RequestMapping(value= {"xoa-tk/{id}"})
		public String delete_tk(Model model, @PathVariable("id") int id) {
			accountdao.delete(id);
			return "redirect:/admin/hien-thi-tai-khoan";
		}
		@RequestMapping(value= {"hien-thi-tai-khoan"})
		public String account(Model model, Integer accid, Integer pageno) {
			accid = accid ==null ? 0 :accid; 
			pageno = pageno ==null ? 1 :pageno; 
			model.addAttribute("page", "paging-account");
			model.addAttribute("Accounts", accountdao.getAccount("email"));
			model.addAttribute("accid", accid);
			Page Paging = accountdao.paging(accid, pageno, 4);
			model.addAttribute("accounts", Paging.getPros());
			model.addAttribute("totalpage", Paging.getTotalPages());
			model.addAttribute("currentpage", pageno);
			return "Admin";
		}
//		
//		//order
				@RequestMapping(value= {"xoa-don/{id}"})
				public String delete_don(Model model, @PathVariable("id") int id) {
					orderdao.delete(id);
					return "redirect:/admin/hien-thi-don";
				}
				@RequestMapping(value= {"hien-thi-don"})
				public String order(Model model, Integer orderid, Integer pageno, HttpServletRequest req) {
					orderid = orderid ==null ? 0 :orderid; 
					pageno = pageno ==null ? 1 :pageno; 
					model.addAttribute("page", "cart");
					List<Cart> carts = new ArrayList<>();
					HttpSession session = req.getSession();
					if (session.getAttribute("cart") != null) {
						carts = (List<Cart>) session.getAttribute("cart");
					}
					model.addAttribute("carts", carts);
					model.addAttribute("page", "paging-order");
					model.addAttribute("Orders", orderdao.getAll());
					model.addAttribute("orderid", orderid);
					Page Paging = orderdao.paging(orderid, pageno, 4);
					model.addAttribute("orders", Paging.getPros());
					model.addAttribute("totalpage", Paging.getTotalPages());
					model.addAttribute("currentpage", pageno);
					return "Admin";
				}
				
				//xem chi tiest view
				@RequestMapping(value= {"chi-tiet-don-hang/{id}"}, method = RequestMethod.GET)
				public String order_detail(Model model, @PathVariable("id") String id) {
					model.addAttribute("OrderDetail", orderdao.getId(id));
					model.addAttribute("page", "order_detail");
					return "Admin";
				}

		
}
