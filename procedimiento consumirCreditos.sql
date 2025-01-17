DELIMITER //

CREATE PROCEDURE consumirCreditos(IN p_idUser INT)
BEGIN
    DECLARE v_credits INT;

    -- Obtener los créditos del usuario
    SELECT credits INTO v_credits FROM users WHERE id = p_idUser;

    -- Verificar si el usuario existe y tiene créditos suficientes
    IF v_credits IS NULL THEN
        SELECT 'Usuario no encontrado' AS mensaje;
    ELSEIF v_credits > 0 THEN
        -- Realizar la resta de créditos
        UPDATE users SET credits = credits - 1 WHERE id = p_idUser;
        SELECT 'Consumido' AS mensaje;
    ELSE
        SELECT 'Fondos_Insuficientes' AS mensaje;
    END IF;
END //

DELIMITER ;