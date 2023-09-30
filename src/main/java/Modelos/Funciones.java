/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

/**
 *
 * @author valer
 */
public class Funciones {
    String driver  = "com.mysql.cj.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC";
    String usuario = "root";
    String clave   = "123456";

    private Connection Conectar() {
        try {
            Class.forName(driver);
            Connection xcon = DriverManager.getConnection(url,usuario,clave);
            return xcon;
        }
        catch(Exception e) {
            System.out.println(e.toString());
        }
        return null;
    }
    
    public Map obtenerUsuario(String xnom) { 
    String nombreUsuario = ""; 
    String claveUsuario = "";
    String estadoUsuario = "";
    try {
        Connection xcon = this.Conectar();
        String sql = "SELECT * FROM t_usuarios WHERE codigo=?";
        PreparedStatement ps = xcon.prepareStatement(sql);
        ps.setString(1, xnom);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            nombreUsuario = rs.getString("nombre");
            claveUsuario = rs.getString("clave");
            estadoUsuario = rs.getString("estado");
        }
        
        // Cierra la conexión
        xcon.close();
        Map<String, String> valores = new HashMap<>();
        valores.put("codigo", xnom);
        valores.put("nombre", nombreUsuario);
        valores.put("clave", claveUsuario);
        valores.put("estado", estadoUsuario);
        
        return valores;
    } catch (Exception ex ) {
        System.out.println(ex.toString());
    }
        return null;
}
    public void actualizarUsuario(String idUsuario, String nuevoNombre, String nuevaClave, String nuevoEstado) {
        String sql = "UPDATE t_usuarios SET nombre=?, clave=?, estado=? WHERE codigo=?";
        try (Connection connection = Conectar();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1, nuevoNombre);
            preparedStatement.setString(2, nuevaClave);
            preparedStatement.setString(3, nuevoEstado);
            preparedStatement.setString(4, idUsuario);

            preparedStatement.executeUpdate();

        } catch (Exception e) {
            System.out.println("Error al actualizar el usuario: " + e.toString());
        }
    }
    public void eliminarUsuario(String idUsuario) {
        String sql = "DELETE FROM t_usuarios WHERE codigo=?";
        try (Connection connection = Conectar();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1, idUsuario);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error al eliminar el usuario: " + e.toString());
        }
    }

}