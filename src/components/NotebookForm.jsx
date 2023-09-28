"use client";
import React, { useState } from "react";
import axios from "axios";
import { useRouter, useParams } from "next/navigation";

const InstrumentForm = () => {
  const router = useRouter();

  const [notebook, setNotebook] = useState({
    nro_inv: "",
    cod_rec: "",
    marca: "",
    modelo: "",
    sn: "",
    ubicacion: "",
    estado: "",
    fecha_ingreso: "",
    vga:"",
    hdmi:"",
    adicionales: "",
    s_op:"",
    lectora_DVD:""
  });

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (
      !notebook.nro_inv ||
      !notebook.cod_rec ||
      !notebook.marca ||
      !notebook.modelo ||
      !notebook.sn ||
      !notebook.ubicacion ||
      !notebook.estado ||
      !notebook.vga ||
      !notebook.hdmi ||
      !notebook.s_op ||
      !notebook.lectora_DVD
    ) {
      alert(
        "Los campos: Numero de inventario, Codigo de recurso, Marca, Modelo, SN, Ubicacion, Estado, VGA, HDMI son obligatorios."
      );
    } else {
      try {
        const res = await axios.post("/api/notebooks", notebook);
        alert("Notebook agregada correctamente");
        router.push("/notebooks");
      } catch (error) {
        alert("No se pudo agregar la notebook");
      }
    }
  };

  const handleChange = ({ target: { name, value } }) => {
    setNotebook({ ...notebook, [name]: value });
  };

  return (
    <>
      <div className="w-full flex justify-center">
        <form
          onSubmit={handleSubmit}
          className="bg-white w-2/5 shadow-md rounded px-8 py-6 my-4"
        >
          <div className="grid grid-cols-2 gap-4">
            <label htmlFor="nro_inv">Numero de inventario:</label>
            <input
              type="text"
              name="nro_inv"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="cod_rec">Codigo de recurso: </label>
            <input
              type="text"
              name="cod_rec"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="marca">Marca: </label>
            <input
              type="text"
              name="marca"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="modelo">Modelo: </label>
            <input
              type="text"
              name="modelo"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="sn">SN: </label>
            <input
              type="text"
              name="sn"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            
            <label htmlFor="estado">Estado: </label>
            <input
              type="text"
              name="estado"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="ubicacion">Ubicacion: </label>
            <input
              type="text"
              name="ubicacion"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="fecha_ingreso">Fecha de ingreso: </label>
            <input
              type="text"
              name="fecha_ingreso"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="vga">Salida VGA: </label>
            <input
              type="text"
              name="vga"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="hdmi">Salida HDMI: </label>
            <input
              type="text"
              name="hdmi"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="adicionales">Adicionales: </label>
            <input
              type="text"
              name="adicionales"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="s_op">Sistema operativo: </label>
            <input
              type="text"
              name="s_op"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="lectora_DVD">Lectora DVD: </label>
            <input
              type="text"
              name="lectora_DVD"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
          </div>
          <div className="flex justify-center">
            <button className="bg-blue-500 hover:bg-blue-700 mt-5 py-2 px-3 rounded-md font-bold text-white">
              Agregar
            </button>
          </div>
        </form>
      </div>
    </>
  );
};

export default InstrumentForm;
