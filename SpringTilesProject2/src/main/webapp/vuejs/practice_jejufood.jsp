<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container-fluid{
   margin-top: 50px; 
}
.row{
   margin: 0px auto;
   width: 100%;
}
h1{
   text-align: center
}
.ddd:hover{
	cursor:pointer
}
</style>
</head>
<body>
  <div class="container-fluid">
    <div class="col-sm-6">
    <table class="table">
      <tr>
        <td>
          <div class="col-md-6 ddd" v-for="fvo in food_list">
			<div class="thumbnail">
                <img :src="fvo.poster "style="width:100%" class="img-rounded ddd" v-on:click="foodDetail(fvo.no)">
                <h3 v-on:click="foodDetail(fvo.no)" class="ddd">{{fvo.title}}</h3>
			</div>
          </div>
        </td>
      </tr>
    </table>
    <div class="row">
      <div class="text-center">
        <input type="button" class="btn btn-sm btn-warning" value="이전" v-on:click="prev()">
          {{curpage}} page / {{totalpage}} pages
        <input type="button" class="btn btn-sm btn-info" value="다음" v-on:click="next()">
      </div>
    </div>
    </div>
    
    <!-- 상세보기 -->
 <div class="col-sm-6" v-show="isShow">
      <table class="table ddd">
        <tr>
           <td>
           <img :src="vo.poster" style="width: 100%">
           </td>
        </tr>
       </table>
 
		<div style="height: 20px"></div>
          <div class="row">
        <table class="table">
         <tr>
           <td colspan="2">
            <h3>{{vo.name }}&nbsp;<span style="color:orange">{{vo.score }}</span></h3>
           </td>
         </tr>
         <tr>
           <th width=10%>주소</th>
           <td width=90%>{{vo.addr }}</td>
         </tr>
         <tr>
           <th width=10%>전화</th>
           <td width=90%>{{vo.tel }}</td>
         </tr>
         <tr>
           <th width=10%>음식종류</th>
           <td width=90%>{{vo.type }}</td>
         </tr>
         <tr>
           <th width=10%>주차</th>
           <td width=90%>{{vo.parking }}</td>
         </tr>
         <tr>
           <th width=10%>영업시간</th>
           <td width=90%>{{vo.time }}</td>
         </tr>
         <tr>
         <tr v-if="vo.menu!='no'">
          <th width=10%>메뉴</th>
          <td width=90%>
          <ul>
             <li v-for="m in menus">{{m }}원</li>
          </ul>
          </td>
        </tr>
        </table>
    </div>
  </div>
  </div>
  <script>
    new Vue({
    	el:'.container-fluid',
    	data:{
    		food_list:[],
    		vo:{},
    		isShow:false,
    		posters:[],
    		menus:[],
    		curpage:1,
    		totalpage:0
    	},
    	mounted:function(){
			
  			  let _this=this
	      		  axios.get('http://localhost/web/jeju/food_list_vue.do',{
	      			  params:{
	      				  page:1
	      			  }
	      		  // then => success:function(response)
	      		  }).then(function(response){
	      			  // response => json
	      			  console.log(response.data)
	      			  _this.food_list=response.data;
	      		  	})
    	},
    	methods:{
    		foodList:function(no){
    			  let _this=this
	      		  axios.get('http://localhost/web/jeju/food_list_vue.do',{
	      			  params:{
	      				  no:no
	      			  }
	      		  // then => success:function(response)
	      		  }).then(function(response){
	      			  // response => json
	      			  console.log(response.data)
	      			  _this.food_list=response.data;
	      		  	})
    		  },
    		  prev:function(){
    	            this.curpage=this.curpage>1?this.curpage-1:this.curpage;
    	            let _this=this;
 	                axios.get("http://localhost/web/jeju/food_list_vue.do",{
 	                  //aws 시 localhost(X), 고정IP로 변경
 	                  params:{
 	                     page:_this.curpage,
 	                  }
 	               }).then(function(response){
 	                  console.log(response.data)
 	                  _this.food_list=response.data;
 	                  _this.curpage=response.data[0].curpage
 	                  _this.totalpage=response.data[0].totalpage;
 	               })
    	      },
    	      next:function(){
    	           this.curpage=this.curpage<this.totalpage?this.curpage+1:this.curpage;
    	           let _this=this;
	               axios.get("http://localhost/web/jeju/food_list_vue.do",{
	                  //aws 시 localhost(X), 고정IP로 변경
	                  params:{
	                     page:_this.curpage,
	                  }
	               }).then(function(response){
	                  console.log(response.data)
	                  _this.food_list=response.data;
	                  _this.curpage=response.data[0].curpage
	                  _this.totalpage=response.data[0].totalpage;
	               })
    	      },
    		 
    	      foodDetail:function(no){
    			  this.isShow=true
    			  let _this=this
      		  axios.get('http://localhost/web/jeju/food_detail_vue.do',{
      			  params:{
      				  no:no
      			  }
      		  // then => success:function(response)
      		  }).then(function(response){
      			  // response => json
      			  console.log(response.data)
      			  _this.vo=response.data;
      			_this.menus=_this.vo.menu.split('^')
/*       			  _this.posters=_this.vo.poster.split('^')
      			  _this.menus=_this.vo.menu.split('^') */
      		  	})
    		  }
    	      
    	}
    })
  </script>
</body>
</html>