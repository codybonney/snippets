SET @count = 0;
UPDATE `my_table` SET `my_table`.`id` = @count:= @count + 1;

ALTER TABLE `my_table` AUTO_INCREMENT = 1;