<%-- 
    Document   : ValidateEmail
    Created on : May 20, 2023, 5:22:51 PM
    Author     : shrijeet
--%>


<!DOCTYPE html>
<html>
    <head>
        <title>Check Email here!!!</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {
                background-image: url('https://wallup.net/wp-content/uploads/2018/10/06/364377-puppies-puppy-baby-dog-dogs-41.jpg');
                background-size: cover;
                background-position: center;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .form-container {
                background-color: #333333;
                color: whitesmoke;
                font-size: 100%;
                padding: 20px;
                max-width: 600px;
                width: 80%;
                opacity: 0.7;
            }

            .form-container table {
                background-color: #333333;
            }

            .form-container th {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <form method="POST" action="http://localhost:8080/petshop/ValidateEmail">
            <div class="form-container">
                <table border="1">
                    <thead>
                        <tr>
                            <th colspan="2">VALIDATE YOUR EMAIL</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>EMAIL</td>
                            <td><input type="email" name="temail" id="temail" required placeholder="Enter your registered email"></td>
                        </tr>
                        <tr>
                            <td><button type="submit">Send Mail Now</button></td>
                            <td>
                                <button type="reset">Clear</button>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <th colspan="2">&copy; petXplore &reg;</th>
                    </tfoot>
                </table>
            </div>
        </form>
    </body>
</html>
