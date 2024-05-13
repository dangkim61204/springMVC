package entities;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Products")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Length(min = 3,max = 50,message = "Độ dài của mã từ 3-50 ký tự")
	@NotEmpty(message = "Tên sản phẩm không được trống")
	private String name;
	@NotNull(message = "Giá sản phẩm không được trống")
	private float price;
	
    private String image;
	@NotEmpty(message = "Hãy nhập mô tả")
    private String description;
	@NotNull(message = "Nhập danh mục")
    private int categoryid;

    private Date createdate;
    private boolean active;
	
	@ManyToOne(fetch = FetchType.EAGER) 
	@JoinColumn(name="categoryid",insertable = false, updatable = false)
	private Category category;
	
	public Product() {
	
	}

	

	public Product(int id, String name, float price, String image, String description, int categoryid, Date createdate,
			boolean active, Category category) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.image = image;
		this.description = description;
		this.categoryid = categoryid;
		this.createdate = createdate;
		this.active = active;
		this.category = category;
	}



	public Product( String name, float price, String image, String description, int categoryid, Date createdate,
			boolean active, Category category) {
		super();
		
		this.name = name;
		this.price = price;
		this.image = image;
		this.description = description;
		this.categoryid = categoryid;
		this.createdate = createdate;
		this.active = active;
		this.category = category;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public float getPrice() {
		return price;
	}



	public void setPrice(float price) {
		this.price = price;
	}



	public String getImage() {
		return image;
	}



	public void setImage(String image) {
		this.image = image;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public int getCategoryid() {
		return categoryid;
	}



	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}



	public Date getCreatedate() {
		return createdate;
	}



	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}



	public boolean isActive() {
		return active;
	}



	public void setActive(boolean active) {
		this.active = active;
	}



	public Category getCategory() {
		return category;
	}



	public void setCategory(Category category) {
		this.category = category;
	}



	
	
	

}
