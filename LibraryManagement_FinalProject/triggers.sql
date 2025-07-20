-- triggers.sql: Trigger for Due-Date Notification

DELIMITER //

CREATE TRIGGER NotifyDueDate
AFTER INSERT ON Loans
FOR EACH ROW
BEGIN
  DECLARE dueDate DATE;
  SET dueDate = DATE_ADD(NEW.LoanDate, INTERVAL 14 DAY);
  SELECT CONCAT(' Book ID ', NEW.BookID, ' is due on ', dueDate) AS DueNotification;
END;
//

DELIMITER ;
