create database aspLibrary
use aspLibrary

CREATE TABLE Library_Books(
BookID INT  PRIMARY KEY  IDENTITY(101,1) NOT NULL,
Title VARCHAR(50) NOT NULL,
Publication_Year int NOT NULL);
 
drop table Library_Authors
CREATE TABLE Library_Authors(
Author_id int IDENTITY(101,1) Foreign key references Library_Books(BookID)NOT NULL,
AuthorName VARCHAR(15));

--INSERT
create procedure storeprocedure_insert_btn
@BookID int,
@Title VARCHAR (50),
@Publication_Year int,
@AuthorName varchar(15)
AS 
BEGIN
INSERT INTO Library_Books (Title,Publication_Year)VALUES(@Title,@Publication_Year)
insert into Library_Authors(AuthorName)values(@AuthorName)
END;

--GRID VIEW
create procedure btn_grid_view
as
begin
 select Library_Books.BookID,Library_Books.Title,Library_Books.Publication_Year,Library_Authors.AuthorName
from Library_Books 
inner join Library_Authors on Library_Books.BookID=Library_Authors.Author_id--Library_Books,Library_Authors
End;

--DELETE
alter PROCEDURE SP_DLELTE_BTN
   --@BookID INT
   @Author_id INT
AS 
BEGIN
    -- Delete the book based on BookID
 -- DELETE FROM Library_Books WHERE BookID = @BookID;

    -- Delete the author based on Author_id (assuming this is the author's ID)
    DELETE FROM Library_Authors WHERE Author_id = @Author_id;
END

--UPDATE
--create PROCEDURE SP_UPDATE_BTN (@BookID INT)
--AS 
--BEGIN
--update Library_Authors set Author_id = @Author_id;
--END;

--CREATE PROCEDURE sp_UPDATE_btn (Author_id INT)
--AS 
--BEGIN
--update Library_Authors set Author_id = @Author_id where Author_id = @Author_id
--END;
--CREATE PROCEDURE sp_UPDATE_btn (@BookID INT,@Title varchar(50),@Publication_Year int)
--AS 
--BEGIN
--update Library_Books set BookID=@BookID,Title=@Title,Publication_Year=@Publication_Year where BookID=@BookID
--END;

--alter PROCEDURE sp_UPDATE_btn 
--    @BookID INT,l
--    @Title VARCHAR(50),
--    @Publication_Year INT,
--	@AuthorName VARCHAR(15)
--AS 
--BEGIN
--    UPDATE Library_Books
--    SET Title = @Title, Publication_Year = @Publication_Year,AuthorName=@AuthorName
--    WHERE BookID = @BookID;

--	 UPDATE Library_Authors
--    SET AuthorName=@AuthorName
--    WHERE Author_id = @BookID; -- Assuming Author_id corresponds to BookID
--END;

ALTER PROCEDURE sp_UPDATE_btn 
    @BookID INT,
    @Title VARCHAR(50),
    @Publication_Year INT,
    @AuthorName VARCHAR(15)
AS 
BEGIN
    -- Update the "Library_Books" table
    UPDATE Library_Books
    SET Title = @Title, Publication_Year = @Publication_Year, AuthorName = @AuthorName
    WHERE BookID = @BookID;

    -- Update the "Library_Authors" table based on AuthorName (assuming AuthorName is unique)
    UPDATE Library_Authors
    SET AuthorName = @AuthorName
    WHERE AuthorName = @AuthorName;
END;


select *from Library_Books
select *from Library_Authors

