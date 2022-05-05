package com.bolton.Nursery;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.mock;

import javax.servlet.http.HttpSession;

import org.junit.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.ui.ModelMap;

import com.bolton.Nursery.Controller.NurseryController;

@SpringBootTest
class NurseryApplicationTests {

	private static final ModelMap String = null;
	private static final ModelMap Strings = null;
	private static final HttpSession HttpSession = mock(HttpSession.class);
	NurseryController nc = new NurseryController();

	@Test
	void contextLoads() {
	}

	@ParameterizedTest
	@ValueSource(strings = { "", "  " })

	@Test
	public void TestaddPlant() {
		String sAddPlant = nc.addPlant("rose", "rose plant", 1.0, 2.0, "flowering");
		System.out.println("Test" + sAddPlant);
		assertEquals("index", sAddPlant);
	}

	@Test
	public void TestViewAddPlant() {
		String sView = nc.ViewAddPlant();
		assertEquals("addPlants", sView);
	}

	@Test
	public void TestViewLoginPage() {
		String sViewLogin = nc.ViewLoginPage();
		assertEquals("login", sViewLogin);
	}

	@Test
	public void TestViewSearchPage() {
		String sViewSearch = nc.ViewSearchPage();
		assertEquals("searchPlants", sViewSearch);
	}

	@Test
	public void TestRegister() {
		String sRegister = nc.Register();
		assertEquals("register", sRegister);
	}

	@Test
	public void TestModifyPlantPage() {
		String sModify = nc.ModifyPlantPage();
		assertEquals("modifyPlants", sModify);

	}

	@ParameterizedTest
	@ValueSource(strings = { "", "  " })
	public void TestDisplayCartPage() {
		String sDisplay = nc.DisplayCartPage(Strings);
		assertEquals("cart", sDisplay);

	}

	@ParameterizedTest
	@ValueSource(strings = { "", "  " })
	public void TestDisplayOrderPage() {
		String sDisplayOrder = nc.DisplayOrderPage(Strings);
		assertEquals("order", sDisplayOrder);
	}

	@ParameterizedTest
	@ValueSource(strings = { "", "  " })
	public void TestuserLogOut() {
		String sUserLogOut = nc.userLogOut(Strings, HttpSession);
		assertEquals("login", sUserLogOut);
	}

	@ParameterizedTest
	@ValueSource(strings = { "", "  " })
	public void TestviewPlant() {
		String sViewPalnt = nc.viewPlant(Strings);
		assertEquals("viewPlants", sViewPalnt);
	}

}
