package com.sravs.exp;

import com.sravs.db.DaoFactory;
import com.sravs.db.domain.Stock;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;

@Path("/message")
public class MessageRestService {

    @GET
    @Path("/{param}")
    public Response printMessage(@PathParam("param") String msg) {

        String result = "Restful example : " + msg;

        Stock stock = new Stock("B", "abcd");
        DaoFactory.create(stock);

        result += " created stock!";

        return Response.status(200).entity(result).build();

    }

}