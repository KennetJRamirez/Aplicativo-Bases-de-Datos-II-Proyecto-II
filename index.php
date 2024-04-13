<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Regiones, Comunidades y Tipos de Carreteras del País</title>
</head>

<body>
    <h1>Regiones del País</h1>
    <?php
    // Incluir el archivo de conexión a la base de datos
    require_once("./sources/conexion.php");

    // Crear una nueva instancia de la clase de conexión para obtener las regiones
    $conexion = new Conexion();

    // Consulta SQL para obtener todas las regiones
    $sql = "SELECT ID_REGION, NOMBRE FROM CATALOGO_REGION";
    $resultado = $conexion->consultar($sql);

    // Verificar si se obtuvieron resultados
    if (mysqli_num_rows($resultado) > 0) {
        // Iniciar la lista de regiones
        echo '<ul>';
        // Recorrer los resultados y mostrar cada región como un enlace
        while ($fila = mysqli_fetch_assoc($resultado)) {
            $id_region = $fila['ID_REGION'];
            $nombre_region = $fila['NOMBRE'];
            echo "<li><a href='regiones.php?region=$id_region'>$nombre_region</a></li>";
        }
        // Cerrar la lista de regiones
        echo '</ul>';
    } else {
        // Si no hay regiones en la base de datos
        echo '<p>No se encontraron regiones.</p>';
    }

    // Cerrar la conexión a la base de datos
    $conexion->cerrar();
    ?>

    <h1>Comunidades del País</h1>
    <?php
    // Crear una nueva instancia de la clase de conexión para obtener las comunidades
    $conexion_comunidades = new Conexion();

    // Consulta SQL para obtener todas las comunidades
    $sql_comunidades = "SELECT ID_COMUNIDAD, NOMBRE FROM COMUNIDAD";
    $resultado_comunidades = $conexion_comunidades->consultar($sql_comunidades);

    // Verificar si se obtuvieron resultados
    if (mysqli_num_rows($resultado_comunidades) > 0) {
        // Iniciar la lista de comunidades
        echo '<ul>';
        // Recorrer los resultados y mostrar cada comunidad como un enlace
        while ($fila_comunidad = mysqli_fetch_assoc($resultado_comunidades)) {
            $id_comunidad = $fila_comunidad['ID_COMUNIDAD'];
            $nombre_comunidad = $fila_comunidad['NOMBRE'];
            echo "<li><a href='comunidades.php?comunidad=$id_comunidad'>$nombre_comunidad</a></li>";
        }
        // Cerrar la lista de comunidades
        echo '</ul>';
    } else {
        // Si no hay comunidades en la base de datos
        echo '<p>No se encontraron comunidades.</p>';
    }

    // Cerrar la conexión a la base de datos
    $conexion_comunidades->cerrar();
    ?>

    <h1>Carga Masiva de Datos</h1>
    // Enlace a la página de carga masiva de datos
    <a href="./sources/subir_csv.html">Ir a la página de Carga Masiva de Datos</a>


    <h1>Generar Copia de Seguridad</h1>
    // Enlace para descargar una copia de seguridad de la base de datos
    <a href="descarga.php">Descargar Back Up BD</a>


</form>

</body>

</html>
