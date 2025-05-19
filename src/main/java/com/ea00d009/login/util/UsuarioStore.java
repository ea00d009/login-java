package com.ea00d009.login.util;

import com.ea00d009.login.model.Usuario;
import java.util.HashMap;
import java.util.Map;

public class UsuarioStore {
    private static final Map<String, Usuario> usuarios = new HashMap<>();

    static {
        usuarios.put("admin", new Usuario("admin", "admin123"));
        usuarios.put("user", new Usuario("user", "user123"));
    }

    public static Usuario validar(String username, String password) {
        Usuario user = usuarios.get(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }
}