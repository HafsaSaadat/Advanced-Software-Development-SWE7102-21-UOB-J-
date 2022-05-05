package com.bolton.Nursery.Service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bolton.Nursery.Entity.Cart;
import com.bolton.Nursery.Repository.CartRepository;

@Service
@Transactional
public class CartService {

	@Autowired
	CartRepository cartRepository;

	public void storeCart(Cart cart) {
		cartRepository.save(cart);
	}

	public Iterable<Cart> findCartDetails(String searchUserName) {
		return cartRepository.findCartDetails(searchUserName);
	}

	public Cart checkIfProductExists(String cartUser, Integer cPid) {
		return cartRepository.checkIfProductExists(cartUser, cPid);
	}

	public void updateById(Integer id, Double cQuantity, Double cPrice) {
		Cart cart = cartRepository.findById(id).get();
		cart.setpQty(cQuantity);
		cart.setpPrice(cPrice);
		cartRepository.save(cart);
	}

}
