

/*
1. Write Pl/SQL Program that accept two numbers and operator from user and display the result.
SET SERVEROUTPUT ON;
*/






DECLARE
    num1 NUMBER;
    num2 NUMBER;
    operator CHAR(1);
    result NUMBER;
BEGIN
    -- Accept user input for the first number
    DBMS_OUTPUT.PUT_LINE('Enter the first number:');
    num1 := &num1;

    -- Accept user input for the second number
    DBMS_OUTPUT.PUT_LINE('Enter the second number:');
    num2 := &num2;

    -- Accept user input for the operator
    DBMS_OUTPUT.PUT_LINE('Enter the operator (+, -, *, /):');
    operator := '&operator';

    -- Perform the operation based on the operator
    IF operator = '+' THEN
        result := num1 + num2;
    ELSIF operator = '-' THEN
        result := num1 - num2;
    ELSIF operator = '*' THEN
        result := num1 * num2;
    ELSIF operator = '/' THEN
        IF num2 != 0 THEN
            result := num1 / num2;
        ELSE
            DBMS_OUTPUT.PUT_LINE('Error: Division by zero.');
            RETURN;
        END IF;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Error: Invalid operator.');
        RETURN;
    END IF;

    -- Display the result
    DBMS_OUTPUT.PUT_LINE('The result is: ' || result);

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;





/*

2. Write a program that accept lower limit and upper limit from user and display from lower limit to upper limit 
*/




# Function to display numbers from lower limit to upper limit
def display_range(lower_limit, upper_limit):
    # Iterate through the range from lower_limit to upper_limit inclusive
    for num in range(lower_limit, upper_limit + 1):
        print(num)

# Main code
if __name__ == "__main__":
    # Accept lower limit from user
    lower_limit = int(input("Enter the lower limit: "))
    
    # Accept upper limit from user
    upper_limit = int(input("Enter the upper limit: "))
    
    # Call the function to display the range
    display_range(lower_limit, upper_limit)





/*

3. Write Pl/SQL Program that display the following patterns.
*/




#Pattern 1

DECLARE
    i INTEGER := 1;
    j INTEGER := 1;
BEGIN
    FOR i IN 1..5 LOOP
        FOR j IN 1..i LOOP
            DBMS_OUTPUT.PUT('*');
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
END;



#Pattern 2


DECLARE
    i INTEGER := 1;
    j INTEGER := 1;
BEGIN
    FOR i IN 1..5 LOOP
        FOR j IN 1..(5-i) LOOP
            DBMS_OUTPUT.PUT(' ');
        END LOOP;
        FOR j IN 1..i LOOP
            DBMS_OUTPUT.PUT('*');
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
END;






#Pattern 3





DECLARE
    i INTEGER := 1;
    j INTEGER := 1;
BEGIN
    FOR i IN REVERSE 1..5 LOOP
        FOR j IN 1..i LOOP
            DBMS_OUTPUT.PUT('*');
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
END;

