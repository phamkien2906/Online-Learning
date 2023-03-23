<%-- 
    Document   : lesson7
    Created on : Feb 4, 2023, 12:46:56 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/mystyle.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.jss"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Menu_lesson/header_menu.jsp"></jsp:include>
            <div class="w3-col l10 m12" class="main" style="margin: 0 100px;padding-top: 0px"> 
                <h1>SQL <span class="color_h1">AND, OR and NOT</span> Operators</h1>

                <hr>

                <h2>The SQL AND, OR and NOT Operators</h2>
                <p>The <code class="w3-codespan">WHERE</code> clause can be combined with <code class="w3-codespan">
                        AND</code>, <code class="w3-codespan">OR</code>, and <code class="w3-codespan">
                        NOT</code> operators.</p>
                <p>The <code class="w3-codespan">AND</code> and <code class="w3-codespan">OR</code> operators are used to filter records based on more than one 
                    condition:</p>
                <ul>
                    <li>The <code class="w3-codespan">AND</code> operator displays a record if all the conditions separated by <code class="w3-codespan">
                            AND</code> 
                        are TRUE.</li>
                    <li>The <code class="w3-codespan">OR</code> operator displays a record if any of the conditions separated by <code class="w3-codespan">
                            OR</code> is TRUE.</li>
                </ul>
                <p>The <code class="w3-codespan">NOT</code> operator displays a record if the condition(s) is NOT TRUE.</p>

                <h3>AND Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column1</em>,<em> column2, ...</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>condition1</em> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> <em>condition2</em> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> <em>condition3 ...</em>; </span></div></div>

                <h3>OR Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column1</em>,<em> column2, ...</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <em>condition1</em> <span class="sqlkeywordcolor" style="color:mediumblue">OR</span> <em>condition2</em> <span class="sqlkeywordcolor" style="color:mediumblue">OR</span> <em>condition3 ...</em>; </span></div></div>

                <h3>NOT Syntax</h3>
                <div class="w3-example">
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black">
                            <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> <em>column1</em>,<em> column2, ...</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> <em>table_name</em><br>
                            <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> <em>condition</em>; </span></div></div>
                <hr>

                <h2>Demo Database</h2>
                <p>The table below shows the complete "Customers" table from the Northwind sample database:</p>
                <div class="w3-responsive" style="height:500px;overflow-y:scroll;">
                    <table class="ws-table-all notranslate">
                        <tbody><tr>
                                <th>CustomerID</th><th>CustomerName</th><th>ContactName</th><th>Address</th><th>City</th><th>PostalCode</th><th>Country</th>
                            </tr>
                            <tr>
                                <td>1</td><td>Alfreds Futterkiste</td><td>Maria Anders</td><td>Obere Str. 57</td><td>Berlin</td><td>12209</td><td>Germany</td>
                            </tr>
                            <tr>
                                <td>2</td><td>Ana Trujillo Emparedados y helados</td><td>Ana Trujillo</td><td>Avda. de la Constitución 2222</td><td>México D.F.</td><td>05021</td><td>Mexico</td>
                            </tr>
                            <tr>
                                <td>3</td><td>Antonio Moreno Taquería</td><td>Antonio Moreno</td><td>Mataderos 2312</td><td>México D.F.</td><td>05023</td><td>Mexico</td>
                            </tr>
                            <tr>
                                <td>4</td><td>Around the Horn</td><td>Thomas Hardy</td><td>120 Hanover Sq.</td><td>London</td><td>WA1 1DP</td><td>UK</td>
                            </tr>
                            <tr>
                                <td>5</td><td>Berglunds snabbköp</td><td>Christina Berglund</td><td>Berguvsvägen 8</td><td>Luleå</td><td>S-958 22</td><td>Sweden</td>
                            </tr>
                            <tr>
                                <td>6</td><td>Blauer See Delikatessen</td><td>Hanna Moos</td><td>Forsterstr. 57</td><td>Mannheim</td><td>68306</td><td>Germany</td>
                            </tr>  
                            <tr>
                                <td>7</td><td>Blondel père et fils</td><td>Frédérique Citeaux</td><td>24, place Kléber</td><td>Strasbourg</td><td>67000</td><td>France</td>
                            </tr>
                            <tr>
                                <td>8</td><td>Bólido Comidas preparadas</td><td>Martín Sommer</td><td>C/ Araquil, 67</td><td>Madrid</td><td>28023</td><td>Spain</td>
                            </tr>
                            <tr>
                                <td>9</td><td>Bon app'</td><td>Laurence Lebihans</td><td>12, rue des Bouchers</td><td>Marseille</td><td>13008</td><td>France</td>
                            </tr>
                            <tr>
                                <td>10</td><td>Bottom-Dollar Marketse</td><td>Elizabeth Lincoln</td><td>23 Tsawassen Blvd.</td><td>Tsawassen</td><td>T2F 8M4</td><td>Canada</td>
                            </tr>
                            <tr>
                                <td>11</td><td>B's Beverages</td><td>Victoria Ashworth</td><td>Fauntleroy Circus</td><td>London</td><td>EC2 5NT</td><td>UK</td>
                            </tr>
                            <tr>
                                <td>12</td><td>Cactus Comidas para llevar</td><td>Patricio Simpson</td><td>Cerrito 333</td><td>Buenos Aires</td><td>1010</td><td>Argentina</td>
                            </tr>
                            <tr>
                                <td>13</td><td>Centro comercial Moctezuma</td><td>Francisco Chang</td><td>Sierras de Granada 9993</td><td>México D.F.</td><td>05022</td><td>Mexico</td>
                            </tr>
                            <tr>
                                <td>14</td><td>Chop-suey Chinese</td><td>Yang Wang</td><td>Hauptstr. 29</td><td>Bern</td><td>3012</td><td>Switzerland</td>
                            </tr>
                            <tr>
                                <td>15</td><td>Comércio Mineiro</td><td>Pedro Afonso</td><td>Av. dos Lusíadas, 23</td><td>São Paulo</td><td>05432-043</td><td>Brazil</td>
                            </tr>
                            <tr>
                                <td>16</td><td>Consolidated Holdings</td><td>Elizabeth Brown</td><td>Berkeley Gardens 12 Brewery</td><td>London</td><td>WX1 6LT</td><td>UK</td>
                            </tr>
                            <tr>
                                <td>17</td><td>Drachenblut Delikatessend</td><td>Sven Ottlieb</td><td>Walserweg 21</td><td>Aachen</td><td>52066</td><td>Germany</td>
                            </tr>
                            <tr>
                                <td>18</td><td>Du monde entier</td><td>Janine Labrune</td><td>67, rue des Cinquante Otages</td><td>Nantes</td><td>44000</td><td>France</td>
                            </tr>
                            <tr>
                                <td>19</td><td>Eastern Connection</td><td>Ann Devon</td><td>35 King George</td><td>London</td><td>WX3 6FW</td><td>UK</td>
                            </tr>
                            <tr>
                                <td>20</td>
                                <td>Ernst Handel</td>
                                <td>Roland Mendel</td>
                                <td>Kirchgasse 6</td>
                                <td>Graz</td>
                                <td>8010</td>
                                <td>Austria</td>
                            </tr>
                            <tr>
                                <td>21</td>
                                <td>Familia Arquibaldo</td>
                                <td>Aria Cruz</td>
                                <td>Rua Orós, 92</td>
                                <td>São Paulo</td>
                                <td>05442-030</td>
                                <td>Brazil</td>
                            </tr>
                            <tr>
                                <td>22</td>
                                <td>FISSA Fabrica Inter. Salchichas S.A.</td>
                                <td>Diego Roel</td>
                                <td>C/ Moralzarzal, 86</td>
                                <td>Madrid</td>
                                <td>28034</td>
                                <td>Spain</td>
                            </tr>
                            <tr>
                                <td>23</td>
                                <td>Folies gourmandes</td>
                                <td>Martine Rancé</td>
                                <td>184, chaussée de Tournai</td>
                                <td>Lille</td>
                                <td>59000</td>
                                <td>France</td>
                            </tr>
                            <tr>
                                <td>24</td>
                                <td>Folk och fä HB</td>
                                <td>Maria Larsson</td>
                                <td>Åkergatan 24</td>
                                <td>Bräcke</td>
                                <td>S-844 67</td>
                                <td>Sweden</td>
                            </tr>
                            <tr>
                                <td>25</td>
                                <td>Frankenversand</td>
                                <td>Peter Franken</td>
                                <td>Berliner Platz 43</td>
                                <td>München</td>
                                <td>80805</td>
                                <td>Germany</td>
                            </tr>
                            <tr>
                                <td>26</td>
                                <td>France restauration</td>
                                <td>Carine Schmitt</td>
                                <td>54, rue Royale</td>
                                <td>Nantes</td>
                                <td>44000</td>
                                <td>France</td>
                            </tr>
                            <tr>
                                <td>27</td>
                                <td>Franchi S.p.A.</td>
                                <td>Paolo Accorti</td>
                                <td>Via Monte Bianco 34</td>
                                <td>Torino</td>
                                <td>10100</td>
                                <td>Italy</td>
                            </tr>
                            <tr>
                                <td>28</td>
                                <td>Furia Bacalhau e Frutos do Mar</td>
                                <td>Lino Rodriguez</td>
                                <td>Jardim das rosas n. 32</td>
                                <td>Lisboa</td>
                                <td>1675</td>
                                <td>Portugal</td>
                            </tr>
                            <tr>
                                <td>29</td>
                                <td>Galería del gastrónomo</td>
                                <td>Eduardo Saavedra</td>
                                <td>Rambla de Cataluña, 23</td>
                                <td>Barcelona</td>
                                <td>08022</td>
                                <td>Spain</td>
                            </tr>
                            <tr>
                                <td>30</td>
                                <td>Godos Cocina Típica</td>
                                <td>José Pedro Freyre</td>
                                <td>C/ Romero, 33</td>
                                <td>Sevilla</td>
                                <td>41101</td>
                                <td>Spain</td>
                            </tr>
                            <tr>
                                <td>31</td>
                                <td>Gourmet Lanchonetes</td>
                                <td>André Fonseca</td>
                                <td>Av. Brasil, 442</td>
                                <td>Campinas</td>
                                <td>04876-786</td>
                                <td>Brazil</td>
                            </tr>
                            <tr>
                                <td>32</td>
                                <td>Great Lakes Food Market</td>
                                <td>Howard Snyder</td>
                                <td>2732 Baker Blvd.</td>
                                <td>Eugene</td>
                                <td>97403</td>
                                <td>USA</td>
                            </tr>
                            <tr>
                                <td>33</td>
                                <td>GROSELLA-Restaurante</td>
                                <td>Manuel Pereira</td>
                                <td>5ª Ave. Los Palos Grandes</td>
                                <td>Caracas</td>
                                <td>1081</td>
                                <td>Venezuela</td>
                            </tr>
                            <tr>
                                <td>34</td>
                                <td>Hanari Carnes</td>
                                <td>Mario Pontes</td>
                                <td>Rua do Paço, 67</td>
                                <td>Rio de Janeiro</td>
                                <td>05454-876</td>
                                <td>Brazil</td>
                            </tr>
                            <tr>
                                <td>35</td>
                                <td>HILARIÓN-Abastos</td>
                                <td>Carlos Hernández</td>
                                <td>Carrera 22 con Ave. Carlos Soublette #8-35</td>
                                <td>San Cristóbal</td>
                                <td>5022</td>
                                <td>Venezuela</td>
                            </tr>
                            <tr>
                                <td>36</td>
                                <td>Hungry Coyote Import Store</td>
                                <td>Yoshi Latimer</td>
                                <td>City Center Plaza 516 Main St.</td>
                                <td>Elgin</td>
                                <td>97827</td>
                                <td>USA</td>

                            </tr>

                            <tr>
                                <td>37</td>
                                <td>Hungry Owl All-Night Grocers</td>
                                <td>Patricia McKenna</td>
                                <td>8 Johnstown Road</td>
                                <td>Cork</td>
                                <td></td>
                                <td>Ireland</td>

                            </tr>

                            <tr>
                                <td>38</td>
                                <td>Island Trading</td>
                                <td>Helen Bennett</td>
                                <td>Garden House Crowther Way</td>
                                <td>Cowes</td>
                                <td>PO31 7PJ</td>
                                <td>UK</td>

                            </tr>

                            <tr>
                                <td>39</td>
                                <td>Königlich Essen</td>
                                <td>Philip Cramer</td>
                                <td>Maubelstr. 90</td>
                                <td>Brandenburg</td>
                                <td>14776</td>
                                <td>Germany</td>

                            </tr>

                            <tr>
                                <td>40</td>
                                <td>La corne d'abondance</td>
                                <td>Daniel Tonini</td>
                                <td>67, avenue de l'Europe</td>
                                <td>Versailles</td>
                                <td>78000</td>
                                <td>France</td>

                            </tr>

                            <tr>
                                <td>41</td>
                                <td>La maison d'Asie</td>
                                <td>Annette Roulet</td>
                                <td>1 rue Alsace-Lorraine</td>
                                <td>Toulouse</td>
                                <td>31000</td>
                                <td>France</td>

                            </tr>

                            <tr>
                                <td>42</td>
                                <td>Laughing Bacchus Wine Cellars</td>
                                <td>Yoshi Tannamuri</td>
                                <td>1900 Oak St.</td>
                                <td>Vancouver</td>
                                <td>V3F 2K1</td>
                                <td>Canada</td>

                            </tr>

                            <tr>
                                <td>43</td>
                                <td>Lazy K Kountry Store</td>
                                <td>John Steel</td>
                                <td>12 Orchestra Terrace</td>
                                <td>Walla Walla</td>
                                <td>99362</td>
                                <td>USA</td>

                            </tr>

                            <tr>
                                <td>44</td>
                                <td>Lehmanns Marktstand</td>
                                <td>Renate Messner</td>
                                <td>Magazinweg 7</td>
                                <td>Frankfurt a.M. </td>
                                <td>60528</td>
                                <td>Germany</td>

                            </tr>

                            <tr>
                                <td>45</td>
                                <td>Let's Stop N Shop</td>
                                <td>Jaime Yorres</td>
                                <td>87 Polk St. Suite 5</td>
                                <td>San Francisco</td>
                                <td>94117</td>
                                <td>USA</td>

                            </tr>

                            <tr>
                                <td>46</td>
                                <td>LILA-Supermercado</td>
                                <td>Carlos González</td>
                                <td>Carrera 52 con Ave. Bolívar #65-98 Llano Largo</td>
                                <td>Barquisimeto</td>
                                <td>3508</td>
                                <td>Venezuela</td>

                            </tr>

                            <tr>
                                <td>47</td>
                                <td>LINO-Delicateses</td>
                                <td>Felipe Izquierdo</td>
                                <td>Ave. 5 de Mayo Porlamar</td>
                                <td>I. de Margarita</td>
                                <td>4980</td>
                                <td>Venezuela</td>

                            </tr>

                            <tr>
                                <td>48</td>
                                <td>Lonesome Pine Restaurant</td>
                                <td>Fran Wilson</td>
                                <td>89 Chiaroscuro Rd.</td>
                                <td>Portland</td>
                                <td>97219</td>
                                <td>USA</td>

                            </tr>

                            <tr>
                                <td>49</td>
                                <td>Magazzini Alimentari Riuniti</td>
                                <td>Giovanni Rovelli</td>
                                <td>Via Ludovico il Moro 22</td>
                                <td>Bergamo</td>
                                <td>24100</td>
                                <td>Italy</td>

                            </tr>

                            <tr>
                                <td>50</td>
                                <td>Maison Dewey</td>
                                <td>Catherine Dewey</td>
                                <td>Rue Joseph-Bens 532</td>
                                <td>Bruxelles</td>
                                <td>B-1180</td>
                                <td>Belgium</td>

                            </tr>

                            <tr>
                                <td>51</td>
                                <td>Mère Paillarde</td>
                                <td>Jean Fresnière</td>
                                <td>43 rue St. Laurent</td>
                                <td>Montréal</td>
                                <td>H1J 1C3</td>
                                <td>Canada</td>

                            </tr>

                            <tr>
                                <td>52</td>
                                <td>Morgenstern Gesundkost</td>
                                <td>Alexander Feuer</td>
                                <td>Heerstr. 22</td>
                                <td>Leipzig</td>
                                <td>04179</td>
                                <td>Germany</td>

                            </tr>

                            <tr>
                                <td>53</td>
                                <td>North/South</td>
                                <td>Simon Crowther</td>
                                <td>South House 300 Queensbridge</td>
                                <td>London</td>
                                <td>SW7 1RZ</td>
                                <td>UK</td>

                            </tr>

                            <tr>
                                <td>54</td>
                                <td>Océano Atlántico Ltda.</td>
                                <td>Yvonne Moncada</td>
                                <td>Ing. Gustavo Moncada 8585 Piso 20-A</td>
                                <td>Buenos Aires</td>
                                <td>1010</td>
                                <td>Argentina</td>

                            </tr>

                            <tr>
                                <td>55</td>
                                <td>Old World Delicatessen</td>
                                <td>Rene Phillips</td>
                                <td>2743 Bering St.</td>
                                <td>Anchorage</td>
                                <td>99508</td>
                                <td>USA</td>

                            </tr>

                            <tr>
                                <td>56</td>
                                <td>Ottilies Käseladen</td>
                                <td>Henriette Pfalzheim</td>
                                <td>Mehrheimerstr. 369</td>
                                <td>Köln</td>
                                <td>50739</td>
                                <td>Germany</td>

                            </tr>

                            <tr>
                                <td>57</td>
                                <td>Paris spécialités</td>
                                <td>Marie Bertrand</td>
                                <td>265, boulevard Charonne</td>
                                <td>Paris</td>
                                <td>75012</td>
                                <td>France</td>

                            </tr>

                            <tr>
                                <td>58</td>
                                <td>Pericles Comidas clásicas</td>
                                <td>Guillermo Fernández</td>
                                <td>Calle Dr. Jorge Cash 321</td>
                                <td>México D.F.</td>
                                <td>05033</td>
                                <td>Mexico</td>

                            </tr>

                            <tr>
                                <td>59</td>
                                <td>Piccolo und mehr</td>
                                <td>Georg Pipps</td>
                                <td>Geislweg 14</td>
                                <td>Salzburg</td>
                                <td>5020</td>
                                <td>Austria</td>

                            </tr>

                            <tr>
                                <td>60</td>
                                <td>Princesa Isabel Vinhoss</td>
                                <td>Isabel de Castro</td>
                                <td>Estrada da saúde n. 58</td>
                                <td>Lisboa</td>
                                <td>1756</td>
                                <td>Portugal</td>

                            </tr>

                            <tr>
                                <td>61</td>
                                <td>Que Delícia</td>
                                <td>Bernardo Batista</td>
                                <td>Rua da Panificadora, 12</td>
                                <td>Rio de Janeiro</td>
                                <td>02389-673</td>
                                <td>Brazil</td>

                            </tr>

                            <tr>
                                <td>62</td>
                                <td>Queen Cozinha</td>
                                <td>Lúcia Carvalho</td>
                                <td>Alameda dos Canàrios, 891</td>
                                <td>São Paulo</td>
                                <td>05487-020</td>
                                <td>Brazil</td>

                            </tr>

                            <tr>
                                <td>63</td>
                                <td>QUICK-Stop</td>
                                <td>Horst Kloss</td>
                                <td>Taucherstraße 10</td>
                                <td>Cunewalde</td>
                                <td>01307</td>
                                <td>Germany</td>

                            </tr>

                            <tr>
                                <td>64</td>
                                <td>Rancho grande</td>
                                <td>Sergio Gutiérrez</td>
                                <td>Av. del Libertador 900</td>
                                <td>Buenos Aires</td>
                                <td>1010</td>
                                <td>Argentina</td>

                            </tr>

                            <tr>
                                <td>65</td>
                                <td>Rattlesnake Canyon Grocery</td>
                                <td>Paula Wilson</td>
                                <td>2817 Milton Dr.</td>
                                <td>Albuquerque</td>
                                <td>87110</td>
                                <td>USA</td>

                            </tr>

                            <tr>
                                <td>66</td>
                                <td>Reggiani Caseifici</td>
                                <td>Maurizio Moroni</td>
                                <td>Strada Provinciale 124</td>
                                <td>Reggio Emilia</td>
                                <td>42100</td>
                                <td>Italy</td>

                            </tr>

                            <tr>
                                <td>67</td>
                                <td>Ricardo Adocicados</td>
                                <td>Janete Limeira</td>
                                <td>Av. Copacabana, 267</td>
                                <td>Rio de Janeiro</td>
                                <td>02389-890</td>
                                <td>Brazil</td>

                            </tr>

                            <tr>
                                <td>68</td>
                                <td>Richter Supermarkt</td>
                                <td>Michael Holz</td>
                                <td>Grenzacherweg 237</td>
                                <td>Genève</td>
                                <td>1203</td>
                                <td>Switzerland</td>

                            </tr>

                            <tr>
                                <td>69</td>
                                <td>Romero y tomillo</td>
                                <td>Alejandra Camino</td>
                                <td>Gran Vía, 1</td>
                                <td>Madrid</td>
                                <td>28001</td>
                                <td>Spain</td>

                            </tr>

                            <tr>
                                <td>70</td>
                                <td>Santé Gourmet</td>
                                <td>Jonas Bergulfsen</td>
                                <td>Erling Skakkes gate 78</td>
                                <td>Stavern</td>
                                <td>4110</td>
                                <td>Norway</td>

                            </tr>

                            <tr>
                                <td>71</td>
                                <td>Save-a-lot Markets</td>
                                <td>Jose Pavarotti</td>
                                <td>187 Suffolk Ln.</td>
                                <td>Boise</td>
                                <td>83720</td>
                                <td>USA</td>

                            </tr>

                            <tr>
                                <td>72</td>
                                <td>Seven Seas Imports</td>
                                <td>Hari Kumar</td>
                                <td>90 Wadhurst Rd.</td>
                                <td>London</td>
                                <td>OX15 4NB</td>
                                <td>UK</td>

                            </tr>

                            <tr>
                                <td>73</td>
                                <td>Simons bistro</td>
                                <td>Jytte Petersen</td>
                                <td>Vinbæltet 34</td>
                                <td>København</td>
                                <td>1734</td>
                                <td>Denmark</td>

                            </tr>

                            <tr>
                                <td>74</td>
                                <td>Spécialités du monde</td>
                                <td>Dominique Perrier</td>
                                <td>25, rue Lauriston</td>
                                <td>Paris</td>
                                <td>75016</td>
                                <td>France</td>

                            </tr>

                            <tr>
                                <td>75</td>
                                <td>Split Rail Beer &amp; Ale</td>
                                <td>Art Braunschweiger</td>
                                <td>P.O. Box 555</td>
                                <td>Lander</td>
                                <td>82520</td>
                                <td>USA</td>

                            </tr>

                            <tr>
                                <td>76</td>
                                <td>Suprêmes délices</td>
                                <td>Pascale Cartrain</td>
                                <td>Boulevard Tirou, 255</td>
                                <td>Charleroi</td>
                                <td>B-6000</td>
                                <td>Belgium</td>

                            </tr>

                            <tr>
                                <td>77</td>
                                <td>The Big Cheese</td>
                                <td>Liz Nixon</td>
                                <td>89 Jefferson Way Suite 2</td>
                                <td>Portland</td>
                                <td>97201</td>
                                <td>USA</td>

                            </tr>

                            <tr>
                                <td>78</td>
                                <td>The Cracker Box</td>
                                <td>Liu Wong</td>
                                <td>55 Grizzly Peak Rd.</td>
                                <td>Butte</td>
                                <td>59801</td>
                                <td>USA</td>

                            </tr>

                            <tr>
                                <td>79</td>
                                <td>Toms Spezialitäten</td>
                                <td>Karin Josephs</td>
                                <td>Luisenstr. 48</td>
                                <td>Münster</td>
                                <td>44087</td>
                                <td>Germany</td>

                            </tr>

                            <tr>
                                <td>80</td>
                                <td>Tortuga Restaurante</td>
                                <td>Miguel Angel Paolino</td>
                                <td>Avda. Azteca 123</td>
                                <td>México D.F.</td>
                                <td>05033</td>
                                <td>Mexico</td>

                            </tr>

                            <tr>
                                <td>81</td>
                                <td>Tradição Hipermercados</td>
                                <td>Anabela Domingues</td>
                                <td>Av. Inês de Castro, 414</td>
                                <td>São Paulo</td>
                                <td>05634-030</td>
                                <td>Brazil</td>

                            </tr>

                            <tr>
                                <td>82</td>
                                <td>Trail's Head Gourmet Provisioners</td>
                                <td>Helvetius Nagy</td>
                                <td>722 DaVinci Blvd.</td>
                                <td>Kirkland</td>
                                <td>98034</td>
                                <td>USA</td>

                            </tr>

                            <tr>
                                <td>83</td>
                                <td>Vaffeljernet</td>
                                <td>Palle Ibsen</td>
                                <td>Smagsløget 45</td>
                                <td>Århus</td>
                                <td>8200</td>
                                <td>Denmark</td>

                            </tr>

                            <tr>
                                <td>84</td>
                                <td>Victuailles en stock</td>
                                <td>Mary Saveley</td>
                                <td>2, rue du Commerce</td>
                                <td>Lyon</td>
                                <td>69004</td>
                                <td>France</td>

                            </tr>

                            <tr>
                                <td>85</td>
                                <td>Vins et alcools Chevalier</td>
                                <td>Paul Henriot</td>
                                <td>59 rue de l'Abbaye</td>
                                <td>Reims</td>
                                <td>51100</td>
                                <td>France</td>

                            </tr>

                            <tr>
                                <td>86</td>
                                <td>Die Wandernde Kuh</td>
                                <td>Rita Müller</td>
                                <td>Adenauerallee 900</td>
                                <td>Stuttgart</td>
                                <td>70563</td>
                                <td>Germany</td>

                            </tr>

                            <tr>
                                <td>87</td>
                                <td>Wartian Herkku</td>
                                <td>Pirkko Koskitalo</td>
                                <td>Torikatu 38</td>
                                <td>Oulu</td>
                                <td>90110</td>
                                <td>Finland</td>

                            </tr>

                            <tr>
                                <td>88</td>
                                <td>Wellington Importadora</td>
                                <td>Paula Parente</td>
                                <td>Rua do Mercado, 12</td>
                                <td>Resende</td>
                                <td>08737-363</td>
                                <td>Brazil</td>

                            </tr>

                            <tr>
                                <td>89</td>
                                <td>White Clover Markets</td>
                                <td>Karl Jablonski</td>
                                <td>305 - 14th Ave. S. Suite 3B</td>
                                <td>Seattle</td>
                                <td>98128</td>
                                <td>USA</td>

                            </tr>

                            <tr>
                                <td>90</td>
                                <td>Wilman Kala</td>
                                <td>Matti Karttunen</td>
                                <td>Keskuskatu 45</td>
                                <td>Helsinki</td>
                                <td>21240</td>
                                <td>Finland</td>

                            </tr>

                            <tr>
                                <td>91</td>
                                <td>Wolski</td>
                                <td>Zbyszek</td>
                                <td>ul. Filtrowa 68</td>
                                <td>Walla</td>
                                <td>01-012</td>
                                <td>Poland</td>

                            </tr>
                        </tbody></table>
                </div>
                <hr>
                <style>

                    #coursera_img {
                        position: absolute;
                        right: 5%;
                        width: 45%;
                        max-width:350px;
                        bottom: -5%;
                    }


                    #guided {
                        position: relative;
                        padding: 0 60px 30px 60px;
                        margin-bottom: 20px;
                        border-radius: 16px;
                        background-color: #282A35;
                        color: #FFC0C7;
                        font-family: 'Source Sans Pro', sans-serif;
                    }

                    #guided h2 {
                        font-size:30px;
                        margin-top: 1em;
                        margin-bottom: 1em;
                        font-family: 'Source Sans Pro', sans-serif
                    }

                    #guided p {
                        font-size: 20px;
                        margin-top: 1em;
                        margin-bottom: 1em;
                        margin-right: 50%;
                        font-family: 'Source Sans Pro', sans-serif
                    }

                    #guided a {
                        border-radius: 50px;
                        margin-top: 50px;
                        font-size: 18px;
                        background-color: rgb(0, 86, 210);
                        padding: 17px 55px
                    }

                    #guided a:hover,
                    #guided a:active {
                        background-color: rgb(0, 96, 220)!important;
                    }


                    @media screen and (max-width: 1350px) {
                        #coursera_img {
                            bottom: -5%;
                            max-width:300px;
                        }

                    }


                    @media screen and (max-width: 1202px) {
                        #coursera_img {
                            bottom: 5%;
                        }

                    }

                    @media screen and (max-width: 992px) {
                        #coursera_img {
                            bottom: 5%;
                        }

                    }


                    @media screen and (max-width: 800px) {

                        #guided a {
                            width: 100%;
                        }
                        #coursera_img {

                            display:none;
                        }
                        #guided p {
                            display:none;
                        }

                        #guided {
                            margin-bottom: 10px;
                        }
                    }
                </style>

                <div class="w3-panel" id="guided">

                    <h2>Learn to Filter Data in SQL Like a Data Analyst</h2>
                    <p>Try a hands-on training sessions with step-by-step guidance from an expert. Try the guided project made in collaboration with Coursera now!</p>
                    <a class="w3-btn w3-margin-bottom" id="coursera_link" href="https://imp.i384100.net/b36bjb" target="_blank">Get started</a>
                </div>

                <hr>

                <h2>AND Example</h2>
                <p>The following SQL statement selects all fields from "Customers" where country is "Germany" AND city is "Berlin":</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Country=<span class="sqlstringcolor" style="color:brown">'Germany'</span><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> City=<span class="sqlstringcolor" style="color:brown">'Berlin'</span>;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>
                <hr>

                <h2>OR Example</h2>
                <p>The following SQL statement selects all fields from "Customers" where city is "Berlin" OR "München":</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> City=<span class="sqlstringcolor" style="color:brown">'Berlin'</span><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">OR</span> City=<span class="sqlstringcolor" style="color:brown">'München'</span>;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>
                <p>The following SQL statement selects all fields from "Customers" where country is "Germany" OR "Spain":</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Country=<span class="sqlstringcolor" style="color:brown">'Germany'</span><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">OR</span> Country=<span class="sqlstringcolor" style="color:brown">'Spain'</span>;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>
                <hr>

                <h2>NOT Example</h2>
                <p>The following SQL statement selects all fields from "Customers" where country is NOT "Germany":</p>

                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <span class="sqlnumbercolor" style="color:">
                            </span>  <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> Country=<span class="sqlstringcolor" style="color:brown">'Germany'</span>;<span class="sqlnumbercolor" style="color:">
                            </span> </span></div>

                </div>
                <hr>
                <h2>Combining AND, OR and NOT</h2>
                <p>You can also combine the <code class="w3-codespan">AND</code>, <code class="w3-codespan">
                        OR</code> and <code class="w3-codespan">NOT</code> operators.</p>

                <p>The following SQL statement selects all fields from "Customers" where country is "Germany" AND city must be "Berlin" 
                    OR "München" (use parenthesis to form complex expressions):</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> Country=<span class="sqlstringcolor" style="color:brown">'Germany'</span><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> (City=<span class="sqlstringcolor" style="color:brown">'Berlin'</span> <span class="sqlkeywordcolor" style="color:mediumblue">OR</span> City=<span class="sqlstringcolor" style="color:brown">'München'</span>); </span></div>

                </div>

                <p>The following SQL statement selects all fields from "Customers" where country is 
                    NOT "Germany" and NOT "USA":</p>
                <div class="w3-example">
                    <h3>Example</h3>
                    <div class="w3-code notranslate sqlHigh"><span class="sqlcolor" style="color:black"><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">SELECT</span> * <span class="sqlkeywordcolor" style="color:mediumblue">FROM</span> Customers<br><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">WHERE</span> <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> Country=<span class="sqlstringcolor" style="color:brown">'Germany'</span><span class="sqlnumbercolor" style="color:">
                            </span> <span class="sqlkeywordcolor" style="color:mediumblue">AND</span> <span class="sqlkeywordcolor" style="color:mediumblue">NOT</span> Country=<span class="sqlstringcolor" style="color:brown">'USA'</span>; </span></div>

                </div>
                <hr>

                <br>

                <div id="mypagediv2" style="position:relative;text-align:center;"></div>
                <br>
                <form action="lesson?id=${requestScope.lid}" method="post">
                <div class="finish_lesson" style="margin-top: 20px">
                    <input style="color: white;
                           margin-top: 20px;
                           background: green;
                           height: 50px;
                           text-align: center;
                           width: 100px;
                           margin: 0 auto;" type="submit" value="Finish">        
                </div>
            </form>
        </div>
    </body>
</html>
