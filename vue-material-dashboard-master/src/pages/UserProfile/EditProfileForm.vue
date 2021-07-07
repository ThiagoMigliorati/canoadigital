<template>
  <form>
    <md-card>
      <md-card-header :data-background-color="dataBackgroundColor">
        <h4 v-if="this.dataBackgroundColor == 'blue'" class="title">Cadastrar Veiculo</h4>
        <h4 v-if="this.dataBackgroundColor == 'purple'" class="title">Editar Veiculo</h4>
        <p class="category">Informe os dados do Veículo {{this.resposta}}</p>
      </md-card-header>

      <md-card-content>
        <div class="md-layout">
          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field>
              <label>Veiculo</label>
              <md-input v-model="veiculo" type="text"></md-input>
            </md-field>
          </div>

          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field>
              <label>Marca</label>
              <md-input v-model="marca" type="text"></md-input>
            </md-field>
          </div>

          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field>
              <label>Descrição</label>
              <md-input v-model="descricao" type="text"></md-input>
            </md-field>
          </div>

          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field>
              <label>Vendido</label>
              <md-input v-model="vendido" type="number"></md-input>
            </md-field>
          </div>

          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field>
              <label>Ano</label>
              <md-input v-model="ano" type="number"></md-input>
            </md-field>
          </div>


          <div class="md-layout-item md-size-100 text-right">
            <md-button v-if="this.dataBackgroundColor == 'blue'" class="md-raised md-success" @click="createCar">Cadastrar Veículo</md-button>
            <md-button v-if="this.dataBackgroundColor == 'purple'" class="md-raised md-success" @click="editCar">Editar Veículo</md-button>
          </div>
        </div>
      </md-card-content>
    </md-card>
  </form>
</template>
<script>
import axios from 'axios';

export default {
  name: "edit-profile-form",
  props: {
    dataBackgroundColor: {
      type: String,
      default: ""
    },
    id: {
      type: Number,
      default: 0
    },
  },
   created() {
     if(this.id > 0)
      this.getcar(this.id);
   
  },
  methods: {
    getcar: function(id){
      axios
        .get('http://localhost:5000/api/v1/cars/'+id,{id: id},{
          'Content-Type': 'application/json;charset=utf-8',
          "Access-Control-Allow-Origin": "*"
        })
        .then(res => res.data[0])
        .then(res => {
          this.veiculo = res.veiculo
          this.marca = res.marca,
          this.descricao = res.descricao,
          this.ano = res.ano,
          this.vendido = res.vendido
        })
    },
    editCar: function(){
      axios
        .put('http://localhost:5000/api/v1/cars/'+this.id,{veiculo: this.veiculo,marca: this.marca,ano: this.ano, descricao: this.descricao, vendido: this.vendido},{
         'Content-Type': 'application/json;charset=utf-8',
         "Access-Control-Allow-Origin": "*"
        })
        .then(res => res.data)
        .then(res => this.resposta = "Registro Editado com Sucesso")
    },
    createCar: function(){
      axios
      .post('http://localhost:5000/api/v1/cars/',{veiculo: this.veiculo, marca: this.marca, ano: this.ano, descricao: this.descricao,vendido: this.vendido},{
        'Content-Type': 'application/json;charset=utf-8',
        "Access-Control-Allow-Origin": "*"
      })
      .then(res => res.data)
      .then(res => this.resposta = "Registro Criado com Sucesso")
    }
  },
  data() {
    return {
      veiculo: null,
      marca: null,
      descricao: null,
      vendido: 0,
      ano: 2022,
      color: null,
      resposta: ''
    };
  }
};
</script>
<style></style>
