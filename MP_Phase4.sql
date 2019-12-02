
DROP DATABASE IF EXISTS leal;

CREATE DATABASE leal;
USE leal;


# -- added DDL statement
CREATE TABLE policies_(
  id INT not null,
  number INT not null, 
  week_date DATE not null,
  primary key (id)
);

# -- added DDL statement
CREATE TABLE WSC_People (
  wsc_id INT not null,
  wsc_name varchar(50) not null, 
  primary key (wsc_id)
);

# -- added DDL statement
CREATE TABLE WSC(
  id INT not null,
  wsc_id INT not null,
  primary key (id),
  foreign key (id) references policies(id) 
  ON DELETE CASCADE,
  foreign key (wsc_id) references WSC_People(wsc_id)
);

# --- INSERT Statements
INSERT INTO policies VALUES 
(1, 45,"2019-11-03"),
(2, 46,"2019-11-10"),
(3, 47,"2019-11-17")
;

INSERT INTO WSC_People VALUES
(1, "Jeng Ballera"),
(2, "Cynthia Huggins"),
(3, "Mayleen Abarico")
;

INSERT INTO WSC VALUES
(1, 2),
(2, 3),
(3, 1)
;


#------------------ DELETE THIS PLEASE WHEN SUBMITTING
# --- READ STATEMENTS
SELECT id, week_no, week_date, wsc_name
FROM WSC natural join Master_ natural join WSC_People;

# --- UPDATE STATEMENTS
UPDATE WSC 
SET wsc_id =3
WHERE id = 1;

# --- DELETE STATEMENTS
DELETE FROM policies
WHERE id = 1;
