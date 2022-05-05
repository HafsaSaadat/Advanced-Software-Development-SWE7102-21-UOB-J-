package com.bolton.Nursery.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bolton.Nursery.Entity.Cart;
import com.bolton.Nursery.Entity.Plant;
import com.bolton.Nursery.Entity.Users;
import com.bolton.Nursery.Service.CartService;
import com.bolton.Nursery.Service.PlantService;
import com.bolton.Nursery.Service.UserService;

@Controller
@SessionAttributes("userName")
public class NurseryController {
	@Autowired
	PlantService plantService;
	@Autowired
	UserService userService;
	@Autowired
	CartService cartService;

	String userName;

	@RequestMapping
	public String home() {
		return "index";
	}

	@RequestMapping("/add")
	public String addPlant(@RequestParam String pname, String pdesc, double qty, double prc, String pcateg) {
		Plant plant = new Plant(pname, pdesc, qty, prc, pcateg);
		plantService.storePlant(plant);
		return "index";
	}

	// to display Add plant page
	@RequestMapping("/viewaddPlants")
	public String ViewAddPlant() {
		return "addPlants";
	}

	// to display view login page
	@RequestMapping("/viewlogin")
	public String ViewLoginPage() {
		return "login";
	}

	// to display search page
	@RequestMapping("/viewsearch")
	public String ViewSearchPage() {
		return "searchPlants";
	}

	// to display registration page
	@RequestMapping("/regpage")
	public String Register() {
		return "register";
	}

	// to display modify plant detail page
	@RequestMapping("/modifypage")
	public String ModifyPlantPage() {
		return "modifyPlants";
	}

	@RequestMapping("/cartpage")
	public String DisplayCartPage(ModelMap map) {
		if (userName != null) {
			map.put("allCartDetails", cartService.findCartDetails(userName));
			System.out.println("method in cart");
		}
		return "cart";
	}

	// old method of order page
//	@RequestMapping("/orderpage")
//	public String DisplayOrderPage() {
//		return "order";
//	}

	@RequestMapping("/orderpage")
	public String DisplayOrderPage(ModelMap map) {
		if (userName != null) {
			map.put("CartDetailsOnOrder", cartService.findCartDetails(userName));
			System.out.println("method of cart on order page");
		}

		return "order";
	}

	@RequestMapping("/login")
	public String userLogin(@RequestParam String userEmail, String password, ModelMap model) {
		userName = userService.validateUser(userEmail, password);
		// System.out.println(userEmail + "" + password);
		if (userName == null) {
			model.put("errorMessage", "Not a valid user");
			return "login";
		}
		model.put("userName", userName);
		return "index";
	}

	@RequestMapping("/register")
	public String userRegister(@RequestParam String uname, String upass, String uemail) {

		Users newUser = new Users(uname, uemail, upass);
		System.out.println(newUser);
		userService.storeUser(newUser);
		return "login";
	}

	@GetMapping("/logout")
	public String userLogOut(ModelMap model, HttpSession session) {
		session.invalidate();
		model.put("loggedout", "Your are successfully logged out!");
		return "login";
	}

	@RequestMapping("/viewplant")
	public String viewPlant(ModelMap map) {
		map.put("allPlants", plantService.displayPlants());
		return "viewPlants";
	}

	@RequestMapping("/searchbyname")
	public String searchPlants(@RequestParam String sPlantSearch, ModelMap model) {

		Iterable<Plant> plantFound = plantService.findByNameIgnoreCase(sPlantSearch);
		System.out.println(plantFound);
		model.put("searchResult", plantFound);
		return "searchPlants";
	}

	@RequestMapping("/searchbycategory")
	public String searchPlantsByCategory(@RequestParam String sPlantCategory, ModelMap model) {
		System.out.println(sPlantCategory);
		Iterable<Plant> plantCategoryFound = plantService.findByCategory(sPlantCategory);
		System.out.println(plantCategoryFound);
		model.put("searchCategoryResult", plantCategoryFound);
		return "searchPlants";
	}

	@RequestMapping("/addtocart")
	public String addplanttoCart(@RequestParam int id) {
		Plant plantCart = plantService.viewById(id);
		System.out.println(plantCart);
		if (plantCart != null) {
			// check if item already exist in cart for the particular user
			Cart tmpcart = cartService.checkIfProductExists(userName, plantCart.getpID());
			if (tmpcart != null) {
				// check the quantity for the record and then add the one getting form user
				double uQuantity = tmpcart.getpQty() + 1;
				double uPrice = tmpcart.getpPrice() + plantCart.getpPrice();
				System.out.println("cart is not null " + uQuantity + " updated price " + uPrice);
				cartService.updateById(tmpcart.getcID(), uQuantity, uPrice);

			}

			else {
				Cart cart = new Cart(plantCart.getpID(), plantCart.getpName(), plantCart.getpDesc(), 1,
						plantCart.getpPrice(), (userName != null) ? userName : "admin");
				System.out.println(cart);
				System.out.println(userName);
				cartService.storeCart(cart);
			}
		}
		return "index";
	}

	@RequestMapping("/displaybyid")
	public String displaybyid(@RequestParam Integer pid, ModelMap map) {
		map.put("plantbyid", "The plant Details are " + plantService.viewById(pid));
		return "index";
	}

	@RequestMapping("/deletebyid")
	public String deleteByid(@RequestParam Integer did) {
		plantService.deleteById(did);
		System.out.println("hello");
		return "modifyPlants";
	}

	@RequestMapping("/updatebyid")
	public String updateByid(@RequestParam Integer upid, String uname) {
		plantService.updateById(upid, uname);
		System.out.println("hello");
		return "index";
	}

	@RequestMapping("/updateallbyid")
	public String updateAllByid(@RequestParam Integer uppid, String unname, String uddesc) {
		plantService.updateAllById(uppid, unname, uddesc);
		System.out.println(uppid + " " + unname + " " + uddesc);
		return "index";
	}

}
