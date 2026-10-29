erDiagram
    UNIDADE ||--o{ ATENDIMENTO : hospeda
    PACIENTE ||--o{ ATENDIMENTO : realiza
    CLASSIFICACAO ||--o{ ATENDIMENTO : classifica
    ATENDIMENTO ||--o{ MOVIMENTACAO : registra
    SETOR ||--o{ MOVIMENTACAO : armazena
    
    UNIDADE {
        int id_unidade PK
        string nome_unidade UK
        string cnes UK
        boolean is_operacional
    }
    
    PACIENTE {
        int id_paciente PK
        string cpf UK
        string nome_completo
        date data_nascimento
    }
    
    CLASSIFICACAO {
        int id_classificacao PK
        string cor_pulseira UK
        string nivel_urgencia
        int tempo_alvo_minutos
    }
    
    ATENDIMENTO {
        int id_atendimento PK
        int id_paciente FK
        int id_unidade FK
        int id_classificacao FK
        timestamp data_hora_chegada
        string status_geral
    }
    
    SETOR {
        int id_setor PK
        string nome_setor UK
        boolean is_fila_espera
    }
    
    MOVIMENTACAO {
        int id_movimentacao PK
        int id_atendimento FK
        int id_setor FK
        timestamp data_hora_entrada
        timestamp data_hora_saida
    }
