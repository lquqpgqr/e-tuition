import React, { Fragment } from "react";
import "../css/error404.css"
const ErrorPage = () =>{

    return(
        <div class="error-page">
            <div class="container">
                <h2>Ooops! Page Not Found</h2>
                <h1>404</h1>
                <p>There were some problems while connecting to the page</p>
                <a href="#">Go Back Home</a>
            </div>
        </div>
    )
}

export default ErrorPage;