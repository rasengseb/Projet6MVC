package com.mvc.exception;

public class RessourceNotFoundException extends Exception{

    private static final long serialVersionUID = 1L;

    public RessourceNotFoundException (Object resourId){
        super(resourId != null ? resourId.toString() : null);
    }
}
