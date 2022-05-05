package com.bolton.Nursery.Repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.bolton.Nursery.Entity.Cart;

public interface CartRepository extends CrudRepository<Cart, Integer> {

	@Query("select c from Cart c where c.uName = :searchUserName")
	Iterable<Cart> findCartDetails(String searchUserName);

	@Query("select c from Cart c where c.uName = :cartUser and c.pID = :cPid")
	Cart checkIfProductExists(String cartUser, Integer cPid);

	// c.count is giving error
	@Query("select c.cID, c.pID, c.pName, c.pDesc, c.pQty, c.pPrice, c.uName, count(c) from Cart c where c.uName = :userNameGroupByQuantity  group by c.pID")
	Iterable<Cart> findCartDetailsGroupByQunatity(String userNameGroupByQuantity);

}
