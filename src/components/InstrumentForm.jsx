"use client";
import React, { useState } from "react";
import axios from "axios";
import { useRouter, useParams } from "next/navigation";

const InstrumentForm = () => {
  const router = useRouter();

  const [instrumento, setInstrumento] = useState({
    nro_inv: "",
    cod_rec: "",
    tipo: "",
    descripcion: "",
    marca: "",
    modelo: "",
    sn: "",
    ab_rango: "",
    cod_manual: "",
    espeficicaciones: "",
    estado: "",
    ubicacion: "",
    adicionales: "",
    fecha_ingreso: "",
  });

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (
      !instrumento.nro_inv ||
      !instrumento.cod_rec ||
      !instrumento.tipo ||
      !instrumento.descripcion ||
      !instrumento.marca ||
      !instrumento.modelo ||
      !instrumento.sn ||
      !instrumento.ubicacion
    ) {
      alert(
        "Los campos: Numero de inventario, Codigo de recurso, Tipo, Descripcion, Marca, Modelo, SN, Ubicacion son obligatorios."
      );
    } else {
      try {
        const res = await axios.post("/api/instrumentos", instrumento);
        alert("Instrumento agregado correctamente");
        router.push("/instrumentos");
      } catch (error) {
        alert("No se pudo agregar el instrumento");
      }
    }
  };

  const handleChange = ({ target: { name, value } }) => {
    setInstrumento({ ...instrumento, [name]: value });
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
            <label htmlFor="tipo">Tipo: </label>
            <input
              type="text"
              name="tipo"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="descripcion">Descripcion: </label>
            <input
              type="text"
              name="descripcion"
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
            <label htmlFor="ab_rango">AB - Rango: </label>
            <input
              type="text"
              name="ab_rango"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="cod_manual">Codigo de manual: </label>
            <input
              type="text"
              name="cod_manual"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="especificaciones">Especificaciones: </label>
            <input
              type="text"
              name="especificaciones"
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
            <label htmlFor="adicionales">Adicionales: </label>
            <input
              type="text"
              name="adicionales"
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
