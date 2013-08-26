SELECT *,
	CAST(aes_decrypt(`firstname`, 'hter5he34j65') AS CHAR(50)) firstname_decrypted,
	CAST(aes_decrypt(`lastname`, 'hter5he34j65') AS CHAR(50)) lastname_decrypted,
	CAST(aes_decrypt(`email`, 'hter5he34j65') AS CHAR(50)) email_decrypted,
FROM an_encrypted_table