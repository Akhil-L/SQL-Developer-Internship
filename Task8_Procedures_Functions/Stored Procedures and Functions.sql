USE LibraryDB;

DELIMITER //

-- 1. Stored Procedure: Count loans for a member
CREATE PROCEDURE GetLoanCountByMember(IN memberId INT, OUT loanCount INT)
BEGIN
  SELECT COUNT(*) INTO loanCount
  FROM Loans
  WHERE MemberID = memberId;
END //

-- 2. Function: Check if a book is available
CREATE FUNCTION IsBookAvailable(bookId INT) RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
  DECLARE available VARCHAR(10);
  
  IF EXISTS (SELECT 1 FROM Loans WHERE BookID = bookId AND Returned = 0) THEN
    SET available = 'Not Available';
  ELSE
    SET available = 'Available';
  END IF;
  
  RETURN available;
END //

DELIMITER ;

-- Example Calls:
-- CALL GetLoanCountByMember(1, @loanCount);
-- SELECT @loanCount;

-- SELECT IsBookAvailable(101);
