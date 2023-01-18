#!/bin/bash

if [ -d "/home/coder/project/workspace/angularapp" ]
then
    echo "project folder present"
    cp /home/coder/project/workspace/karma/karma.conf.js /home/coder/project/workspace/angularapp/karma.conf.js;
    # checking for app component
    if [ -d "/home/coder/project/workspace/angularapp/src/app" ]
    then
        cp /home/coder/project/workspace/karma/app.component.spec.ts /home/coder/project/workspace/angularapp/src/app/app.component.spec.ts;
    else
        echo "fe_app FAILED";
    fi

    # checking for admin component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/admin" ]
    then
        cp /home/coder/project/workspace/karma/admin.component.spec.ts /home/coder/project/workspace/angularapp/src/app/admin/admin.component.spec.ts;
    else
        echo "fe_admin FAILED";
    fi

    # checking for login component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/login" ]
    then
        cp /home/coder/project/workspace/karma/login.component.spec.ts /home/coder/project/workspace/angularapp/src/app/login/login.component.spec.ts;
    else
        echo "fe_login FAILED";
    fi

    # checking for signup component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/signup" ]
    then
        cp /home/coder/project/workspace/karma/signup.component.spec.ts /home/coder/project/workspace/angularapp/src/app/signup/signup.component.spec.ts;
    else
        echo "fe_signup FAILED";
    fi

    # checking for home component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/home" ]
    then
        cp /home/coder/project/workspace/karma/home.component.spec.ts /home/coder/project/workspace/angularapp/src/app/home/home.component.spec.ts;
    else
        echo "fe_home FAILED";
    fi

    # checking for cart component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/cart" ]
    then
        cp /home/coder/project/workspace/karma/cart.component.spec.ts /home/coder/project/workspace/angularapp/src/app/cart/cart.component.spec.ts;
    else
        echo "fe_cart FAILED";
    fi 

     # checking for admin navigation component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/admin/admin-nav" ]
    then
        cp /home/coder/project/workspace/karma/admin-nav.component.spec.ts /home/coder/project/workspace/angularapp/src/app/admin/admin-nav/admin-nav.component.spec.ts;
    else
        echo "fe_admin_navigation FAILED";
    fi 

    # checking for dashboard component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/admin/dashboard" ]
    then
        cp /home/coder/project/workspace/karma/dashboard.component.spec.ts /home/coder/project/workspace/angularapp/src/app/admin/dashboard/dashboard.component.spec.ts;
    else
        echo "fe_dashboard FAILED";
    fi 

    # checking for addproduct component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/admin/addproduct" ]
    then
        cp /home/coder/project/workspace/karma/addproduct.component.spec.ts /home/coder/project/workspace/angularapp/src/app/admin/addproduct/addproduct.component.spec.ts;
    else
        echo "fe_add_product FAILED";
    fi 

    #checking for orderlist component
    if [ -d "/home/coder/project/workspace/angularapp/src/app/admin/orderlist" ]
    then
        cp /home/coder/project/workspace/karma/orderlist.component.spec.ts /home/coder/project/workspace/angularapp/src/app/admin/orderlist/orderlist.component.spec.ts;
    else
        echo "fe_orderlist FAILED";
    fi 

    cd /home/coder/project/workspace/angularapp/;
    npm test;
else   
    echo "fe_app FAILED";
    echo "fe_admin FAILED";
    echo "fe_login FAILED";
    echo "fe_signup FAILED";
    echo "fe_home FAILED";
    echo "fe_cart FAILED";
    echo "fe_admin_navigation FAILED";
    echo "fe_dashboard FAILED";
    echo "fe_add_product FAILED";
    echo "fe_orderlist FAILED";
fi
