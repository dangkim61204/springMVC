package entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Categories")
public class Category implements Serializable {
	@Id
	@Column(name="Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="Name")
    private String name;
	@Column(name="parentid",nullable = true)
    private Integer  parentid;
    
	@OneToMany(mappedBy = "category",fetch = FetchType.EAGER)
	private List<Product> Products;
    public Category() {
		// TODO Auto-generated constructor stub
	}
	public Category(int id, String name, Integer parentid, List<Product> products) {
		super();
		this.id = id;
		this.name = name;
		this.parentid = parentid;
		Products = products;
	}

	public Category( String name, Integer parentid, List<Product> products) {
		super();
	
		this.name = name;
		this.parentid = parentid;
		Products = products;
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

	public Integer getParentid() {
		return parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public List<Product> getProducts() {
		return Products;
	}

	public void setProducts(List<Product> products) {
		Products = products;
	}



}
