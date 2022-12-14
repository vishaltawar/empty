<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Registration</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            background: linear-gradient(rgba(217, 200, 45, 0.864),rgba(18, 179, 179, 0.913)) no-repeat;
            background-size: 100% 100%;
            width: 100%;
            height: 84vh;
        }
        #main{
            background: linear-gradient(rgba(15, 16, 16, 0.655),rgba(15,16,16, 0.455));
            margin: 100px auto;
            width: 30%;
            height: auto;
            padding: 50px;
            border-radius: 10px;
        }
        table{
            margin: 0 auto;
        }
        table tr td input{
            color: white;
            height: 40px;
            width: 100%;
            margin: 5px;
            border-radius: 5px;
            padding: 10px;
            background: none;
            outline: none;
            border: none;
            border-bottom: 2px solid rgb(198, 242, 0);  
          }
          #main #login{
            border: none;
            background-color: rgba(11, 102, 248, 0.705);
            margin-top: 30px;
          }
          #headtext{
            color: white;
            padding: 10px 0 20px 0;
            text-align: center;
            font-size: 25px;
            font-family:Verdana, Geneva, Tahoma, sans-serif ;
          }
        
    </style>
</head>
<body>
    <div id="main">
        <h3 id="headtext">Admin Registration</h3>
        <form action="./AdminRegistrationDB.jsp" method="post">

            <table>
                <tr>
                    <td><input type="text" placeholder="Enter Adimin ID" name="id"></td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="Enter the Name" name="name"></td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="Enter the Username" name="username"></td>
                </tr>
                <tr>
                    <td><input type="password" placeholder="Enter the Password" name="password"></td>
                </tr>
                <tr>
                    <td ><input id="login" type="submit" value="Submit "></td>
                </tr>
            </table>
        </form>
    </div>
</html>