DELIMITER //

CREATE PROCEDURE validarTiempoPublicacionProductos()
BEGIN
   DECLARE done INT DEFAULT FALSE;
   DECLARE prod_id INT;
   DECLARE cur CURSOR FOR SELECT id FROM ec_products WHERE updated_at<=DATE_SUB(NOW(),INTERVAL 1 MONTH);/*Consulta todos los productos que ya cumplieron 1 mes de ser publicadox*/
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=TRUE;
   
   OPEN cur;
   read_loop: LOOP
   	FETCH cur INTO prod_id;
   	IF done then
   		LEAVE read_loop;
   	END IF;
   	
   	UPDATE ec_product_label_products SET product_labeL_id=4 WHERE product_id=prod_id; /*Actualiza a una publicacion a plan free que es el id=4*/
   	CALL saveActivityOfPublications(prod_id,"Free");
   END LOOP;
	CLOSE cur;	
   	
END //


CREATE PROCEDURE saveActivityOfPublications(IN product_id BIGINT,IN typeplan VARCHAR(50))
BEGIN
	INSERT INTO activity_publication_of_products(idProduct,type_plan,created_at,updated_at) VALUES (product_id,typeplan,NOW(),NOW()) ;
END//
DELIMITER ;

