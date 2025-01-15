CREATE DATABASE GestaoConsultas;
USE GestaoConsultas;

CREATE TABLE Endereco (
    idEndereco INT AUTO_INCREMENT PRIMARY KEY,
    rua VARCHAR(45) NOT NULL,
    bairro VARCHAR(45) NOT NULL,
    casa VARCHAR(45) NOT NULL
);

CREATE TABLE Telefone (
    idTelefone INT AUTO_INCREMENT PRIMARY KEY,
    numero_alternativo VARCHAR(9) NOT NULL,
    numero_principal VARCHAR(9) NOT NULL
);

CREATE TABLE Paciente (
    IDPaciente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
    DataDeNascimento DATE NOT NULL,
    idEndereco INT,
    idTelefone INT,
    FOREIGN KEY (idEndereco) REFERENCES Endereco(idEndereco),
    FOREIGN KEY (idTelefone) REFERENCES Telefone(idTelefone)
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
    idEndereco INT,
    idTelefone INT,
    FOREIGN KEY (IDEspecialidade) REFERENCES Especialidade(IDEspecialidade),
    FOREIGN KEY (idEndereco) REFERENCES Endereco(idEndereco),
    FOREIGN KEY (idTelefone) REFERENCES Telefone(idTelefone)
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
