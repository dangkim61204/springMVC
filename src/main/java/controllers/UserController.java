package controllers;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.AccountImpl;
import dao.CategoryImpl;
import dao.OrderImpl;
import dao.ProductDao;
import dao.ProductImpl;
import entities.Account;
import entities.Cart;
import entities.Category;
import entities.Order;
import entities.OrderDetail;
//import entities.Order;
import entities.Page;
import entities.Product;
import util.Cipher;

@Controller
public class UserController {
	@Autowired
	AccountImpl accountdao;
	@Autowired
	ProductImpl productdao;
	@Autowired
	CategoryImpl categorydao;
	@Autowired
	OrderImpl orderdao;
	
	@RequestMapping(value= {"/","trang-chu"})
	public String home(Model model) {
		model.addAttribute("Categorys", categorydao.getAll());
		model.addAttribute("Products", productdao.getAll());
		model.addAttribute("products", productdao.search(0));
		model.addAttribute("page", "home");
		return "User";
	}
	
	@RequestMapping(value= {"gioi-thieu"})
	public String about(Model model) {
		model.addAttribute("page", "about");
		return "User";
	}
	
	@RequestMapping(value= {"chi-tiet-san-pham/{id}"}, method = RequestMethod.GET)
	public String product_detail(Model model, @PathVariable("id") int id) {
		model.addAttribute("Product", productdao.getById(id));
		model.addAttribute("page", "product");
		return "User";
	}
	
	@RequestMapping(value= {"san-pham"})
	public String category(Model model) {
		model.addAttribute("Categorys", categorydao.getAll());
		model.addAttribute("Products", productdao.getAll());
		model.addAttribute("page", "category");
		return "User";
	}
	
	@RequestMapping(value= {"shop"})
	public String shop(Model model) {
		model.addAttribute("page", "shopping-cart");
		return "User";
	}
	
	@RequestMapping(value= {"cart"})
	public String cart(Model model) {
		model.addAttribute("page", "cart");
		return "User";
	}

	@RequestMapping(value= {"check-out"})
	public String check_out(Model model) {
		model.addAttribute("page", "check-out");
		return "User";
	}
	
	@RequestMapping(value= {"lien-he"})
	public String contact(Model model) {
		model.addAttribute("page", "contact");
		return "User";
	}
	
	@RequestMapping(value= {"dang-nhap"})
	public String login(Model model) {
		model.addAttribute("page", "login");
		return "User";
	}
	

	@RequestMapping(value= {"dang-ky"})
	public String register(Model model) {
		model.addAttribute("page", "register");
		return "User";
	}
	
	@RequestMapping(value= {"tin-tuc"})
	public String blog(Model model) {
		model.addAttribute("page", "blog");
		return "User";
	}
	
	
	//GET: dang-nhap 
		@RequestMapping(value = "dang-nhap", method = RequestMethod.GET)
		public String dang_nhap(Model model) {
			model.addAttribute("page", "login");
			return "User";
		}
		//POST: dang-nhap (xử lý đăng nhập)
		@RequestMapping(value = "dang-nhap", method = RequestMethod.POST)
		public String loginProcess(String email, String password, Model model, HttpServletRequest req) {
			
			Account acc = accountdao.getAccount(email);
			String passMd5 = Cipher.GenerateMD5(password);
			if (acc == null || !acc.getPassword().equals(passMd5)) {
				model.addAttribute("msg", "Email hoặc mật khẩu không chính xác");
				model.addAttribute("page", "login");
				return "User";
			}
			HttpSession session = req.getSession();
			session.setMaxInactiveInterval(3600);
			session.setAttribute("account_id", acc.getId());
			session.setAttribute("name", acc.getName());
			session.setAttribute("adminphone", acc.getPhone());
			session.setAttribute("email", acc.getEmail());
			return "redirect:/trang-chu";
		}
		//GET: thoat 
		@RequestMapping(value = "thoat")
		public String logout(Model model, HttpServletRequest req) {
			HttpSession session = req.getSession();
			session.invalidate();
			return "redirect:/trang-chu";
		}
		
		
		
		//dang ky
		@RequestMapping(value = "dang-ky", method = RequestMethod.POST)
		public String dangky(String name, String password, String email, Model model, HttpServletRequest req) {
			Account acc = accountdao.getAccount(email);
			String passMd5 = Cipher.GenerateMD5(password);
			if(acc!=null) {
				model.addAttribute("msg", "Email đã tồn tại");
				model.addAttribute("page", "register");
				return "User";
			}
			Account ac = new Account();
			ac.setName(name);
			ac.setEmail(email);
			ac.setPassword(passMd5);
			ac.setPhone("");
			ac.setRole("user");
			accountdao.insert(ac);
			return "redirect:/dang-nhap";
		}
	
	
	//tìm kiếm theo danh mục
		@RequestMapping(value = "tim-theo-danh-muc")
		public String search(Integer cateid, Model model) {
			model.addAttribute("page", "searchCategory");
			cateid = cateid == null ? 0 : cateid;
			model.addAttribute("categories", categorydao.getAll());
			model.addAttribute("cateid", cateid);
			model.addAttribute("products", productdao.search(cateid));
			return "User";
		}
		
		//tìm kiếm theo tên
		@RequestMapping(value = "tim-theo-ten")
		public String searchByName(Integer cateid, String searchname, Model model) {
			System.out.println(searchname+" hello ");
			model.addAttribute("page", "category");
			cateid = cateid == null ? 0 : cateid;
			searchname = searchname == null ? "" : searchname;
			model.addAttribute("Categorys", categorydao.getAll());
			model.addAttribute("search", searchname);
			model.addAttribute("cateid", cateid);
			model.addAttribute("Products", productdao.search(cateid, searchname));
			return "User";
		}
	
	//tìm kiếm theo giá

		@RequestMapping(value = "tim-theo-gia")
		
		public String searchByPrice(String fromPrice, String toPrice, Model model) {
			model.addAttribute("page", "category");
			model.addAttribute("Categorys", categorydao.getAll());
			float from = fromPrice == null || fromPrice.equals("") ? 0 : Float.parseFloat(fromPrice);
			float to = toPrice == null || toPrice.equals("") ? 0 : Float.parseFloat(toPrice);
			model.addAttribute("formPrice", fromPrice);
			model.addAttribute("toPrice", toPrice);
			model.addAttribute("Products", productdao.search(from, to));
			return "User";
		}

		
		
		//GET: danh-muc-sach "lấy sách theo danh mục và hiển thị trên view 
		@RequestMapping(value = "danh-muc-sp/{id}")
		public String getBooks(@PathVariable("id") Integer id, Model model) {
			model.addAttribute("products", productdao.getById(id));
			model.addAttribute("page", "product");
			return "User";
		}
		
		
		//GET: countItems "trả về số lượng sách trong giỏ hàng"
		@RequestMapping(value = "countItems")
		public @ResponseBody String getItems(Model model, HttpServletRequest req) {
			List<Cart> carts = new ArrayList<>();
			HttpSession session = req.getSession();
			if (session.getAttribute("cart") != null) {
				carts = (List<Cart>) session.getAttribute("cart");
			}
		
			return String.valueOf(carts.size());
		}
		
		
		
		//GET: addItem "thêm sách vào giỏ hàng và trả về tổng số sách trong giỏ"
		@RequestMapping(value = "addItem/{id}")
		public @ResponseBody String addItem(@PathVariable("id") String id, HttpServletRequest req) {
			List<Cart> carts = new ArrayList<>();
			HttpSession session = req.getSession();
			
			Integer proid= Integer.parseInt(id);
			Product pr = productdao.getById(proid);
			if (session.getAttribute("cart") == null) {
				Cart cart = new Cart(pr.getId(), pr.getName(), pr.getImage(), pr.getPrice(),1);
				carts.add(cart);
				session.setAttribute("cart", carts);
			} else {
				carts = (List<Cart>) session.getAttribute("cart");
				boolean duplicate = false;
				for (int i = 0; i < carts.size(); i++) {
					Cart bs = carts.get(i);
					if (bs.getId() == proid) {
						bs.setQuantity(bs.getQuantity() + 1);
						duplicate = true;
						break;
					}
				}
				if (duplicate)
					session.setAttribute("cart", carts);
				else {
					Cart cart = new Cart(pr.getId(), pr.getName(), pr.getImage(), pr.getPrice(),1);
					carts.add(cart);
				}
			}
			session.setAttribute("cart", carts);
			return String.valueOf(carts.size());
		}

		//GET: gio-hang "trả về sách trong giỏ hàng và hiển thị trên view "
		@RequestMapping(value = "gio-hang")
		public String showBasket(Model model, HttpServletRequest req) {
			model.addAttribute("page", "cart");
			List<Cart> carts = new ArrayList<>();
			HttpSession session = req.getSession();
			if (session.getAttribute("cart") != null) {
				carts = (List<Cart>) session.getAttribute("cart");
			}
			model.addAttribute("carts", carts);
		
			return "User";
		}


		
		
		
		//GET: updateCart/{id}/{value} "cập nhật lại số lượng đặt trong giỏ hang"
		@RequestMapping(value = "updateCart/{id}/{value}")
		public @ResponseBody String updateCart(@PathVariable("id") String id, @PathVariable("value") Integer quantity,
				Model model, HttpServletRequest req) {
			List<Cart> carts = new ArrayList<>();
			HttpSession session = req.getSession();
			Integer proid= Integer.parseInt(id);
			if (session.getAttribute("cart") != null) {
				carts = (List<Cart>) session.getAttribute("cart");
				for (int i = 0; i < carts.size(); i++) {
					Cart bs = carts.get(i);
					if (bs.getId() == proid) {
						bs.setQuantity(quantity);
						break;
					}
				}
			}
			return "";
		}
		//GET: removeItem/{id} "xóa một sách trong giỏ hang"
		@RequestMapping(value = "removeItem/{id}")
		public @ResponseBody String removeItem(@PathVariable("id") String id, HttpServletRequest req) {
			List<Cart> carts = new ArrayList<>();
			HttpSession session = req.getSession();
			Integer proid= Integer.parseInt(id);
			boolean find = false;
			if (session.getAttribute("cart") != null) {
				int i;
				carts = (List<Cart>) session.getAttribute("cart");
				for (i = 0; i < carts.size(); i++) {
					Cart bs = carts.get(i);
					if (bs.getId() == proid) {
						find = true;
						break;
					}
				}
				if (find) {
					carts.remove(i);
				}
				session.setAttribute("cart", carts);
			}

			return "";
		}
//		//POST: dat-hang "xử lý đặt hang"
		@RequestMapping(value = {"dat-hang"}, method = RequestMethod.POST)
		public String addOrder(String id,String email,String name, String address, String phone, Model model, HttpServletRequest req) {
			
			List<Cart> carts=null;
			HttpSession session = req.getSession();
			if (session.getAttribute("account_id") == null) {
				return "redirect:/dang-nhap";
			}
			if (session.getAttribute("cart") != null) {
				System.out.println("helllo");
				carts = (List<Cart>) session.getAttribute("cart");
				String timeStamp = new SimpleDateFormat("yyMMdd-HHmmss").format(Calendar.getInstance().getTime());
//				Integer proid= Integer.parseInt(id);
				Order order=new Order();
				order.setId("HD"+timeStamp);
				System.out.println( session.getAttribute("account_id" )+"qqqq");
				order.setAccount_id((int) session.getAttribute("account_id"));
				order.setOrder_date(Date.valueOf(LocalDate.now()));
				order.setAddress(address);
				order.setPhone(phone);
				order.setEmail(email);
				order.setName(name);
				
				List<OrderDetail> orderdetails=new ArrayList<OrderDetail>();
				for (Cart cart : carts) {
					OrderDetail orderdetail = new OrderDetail();
					
					Product pr = productdao.getById(cart.getId()); 
					orderdetail.setPrice(cart.getPrice());
					orderdetail.setQuantity(cart.getQuantity());
					System.out.println(order.getEmail()+"qqqq");
					orderdetail.setOrder(order);
					System.out.println(order.getId()+" id of order");
					orderdetail.setProduct(pr);
					orderdetails.add(orderdetail);
				
				}
				orderdao.insertOrderDetail(order, orderdetails);
				model.addAttribute("msg","Đặt hàng thành công");
			} else {
				model.addAttribute("msg","Giỏ hàng trống");
			}
			model.addAttribute("Categorys", categorydao.getAll());
			model.addAttribute("Products", productdao.getAll());
			model.addAttribute("products", productdao.search(0));
			model.addAttribute("page","home");
			carts=new ArrayList<Cart>();
			session.setAttribute("cart", null);
			model.addAttribute("carts", carts);
			return "User";
		}
	

		
	

}
