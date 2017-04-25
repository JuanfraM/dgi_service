# external_services
Simulation of Dgi, Bps, etc, used for academic purpose

localhost:3000/api/

* Service to Dgi
  * user_data
    http://localhost:3000/api/dgi/users/user-data
    url: dgi/users/user-data
    params: {
      NumeroDocumento: 12345678
    }

* Service to Bps
  * user_info
    http://localhost:3000/api/bps/bps_users/user-info
    url: bps/users/user-info
    params: {
      NumeroDocumento: 12345678
    }
  * user_aporte
    http://localhost:3000/api/bps/bps_aportes/user-aporte
    url: bps/users/user-aporte
    params: {
      NumeroDocumento: 12345678
    }
