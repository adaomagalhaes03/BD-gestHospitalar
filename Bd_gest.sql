CREATE DATABASE GestaoConsultas;
USE GestaoConsultas;

CREATE TABLE Paciente (
    IDPaciente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
    DataDeNascimento DATE NOT NULL,
    Telefone VARCHAR(9),
    Email VARCHAR(60),
    Endereco VARCHAR(255)
);

CREATE TABLE Especialidade (
    IDEspecialidade INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL
);

CREATE TABLE Medico (
    IDMedico INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
    CRM VARCHAR(20) NOT NULL UNIQUE,
    Telefone VARCHAR(15),
    Email VARCHAR(60),
    IDEspecialidade INT NOT NULL,
    FOREIGN KEY (IDEspecialidade) REFERENCES Especialidade(IDEspecialidade)
);

CREATE TABLE Consulta (
    IDConsulta INT AUTO_INCREMENT PRIMARY KEY,
    DataHora DATETIME NOT NULL,
    Motivo TEXT,
    Observacoes TEXT,
    IDPaciente INT NOT NULL,
    IDMedico INT NOT NULL,
    FOREIGN KEY (IDPaciente) REFERENCES Paciente(IDPaciente),
    FOREIGN KEY (IDMedico) REFERENCES Medico(IDMedico)
);

CREATE TABLE Prescricao (
    IDPrescricao INT AUTO_INCREMENT PRIMARY KEY,
    Data DATE NOT NULL,
    Descricao TEXT,
    IDConsulta INT NOT NULL UNIQUE,
    FOREIGN KEY (IDConsulta) REFERENCES Consulta(IDConsulta)
);


