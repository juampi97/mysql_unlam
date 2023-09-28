"use client";
import React from "react";
import axios from "axios";
import Link from "next/link";
import { useRouter, useParams } from "next/navigation";

const NotebookListItem = ({ notebook }) => {
  const router = useRouter();

  const deleteNotebook = async ({ target: { id } }) => {
    //Validar eleccion primero
    try {
      const res = await axios.delete("/api/notebooks/" + id);
      alert("Notebook eliminado correctamente");
      router.push("/notebooks");
    } catch (error) {
      alert("No se pudo eliminar la notebook");
    }
  };

  const salidaVGA = (vga) => {
    return vga ? "Disponible" : "No disponible";
  }
  
  const salidaHDMI = (hdmi) => {  
    return hdmi ? "Disponible" : "No disponible";  
  }

  let salida_vga = salidaVGA(notebook.vga);
  let salida_hdmi = salidaHDMI(notebook.hdmi);
  return (
    <>
      <div
        key={notebook.nro_inv}
        className="bg-white w-2/5 shadow-md rounded px-8 py-6 my-2"
      >
        <div className="grid grid-cols-3 gap-4 mx-4">
          <p>Numero de inventario:</p>
          <p className="col-span-2">{notebook.nro_inv}</p>
          <p>Codigo de recurso:</p>
          <p className="col-span-2">{notebook.cod_rec}</p>
          <p>Marca:</p>
          <p className="col-span-2">{notebook.marca}</p>
          <p>Modelo:</p>
          <p className="col-span-2">{notebook.modelo}</p>
          <p>SN:</p>
          <p className="col-span-2">{notebook.sn}</p>
          {/* <p>{notebook.estado}</p>       */}
          <p>Ubicacion:</p>
          <p className="col-span-2">{notebook.ubicacion}</p>
          <p>Fecha de ingreso:</p>
          <p className="col-span-2">{notebook.fecha_ingreso}</p>
          <p>Salida VGA:</p>
          <p className="col-span-2">{salida_vga}</p>
          <p>Salida HDMI:</p>
          <p className="col-span-2">{salida_hdmi}</p>
          <p>Adicionales:</p>
          <p className="col-span-2">{notebook.adicionales}</p>
          <p>Sistema operativo:</p>
          <p className="col-span-2">{notebook.s_op}</p>
          <p>Lectora DVD:</p>
          <p className="col-span-2">{notebook.lectora_DVD}</p>
        </div>
        <div className="flex justify-center">
          <Link href={`/notebooks/edit/${notebook.nro_inv}`}>
            <button className="bg-yellow-500 hover:bg-yellow-700 mt-5 py-2 px-3 rounded-md font-bold text-white me-2">
              Modificar
            </button>
          </Link>
          <button
            onClick={deleteNotebook}
            className="bg-red-500 hover:bg-red-700 mt-5 py-2 px-3 rounded-md font-bold text-white ms-2"
            id={notebook.nro_inv}
          >
            Eliminar
          </button>
        </div>
      </div>
    </>
  );
};

export default NotebookListItem;
