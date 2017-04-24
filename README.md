# external_services
Simulation of Dgi, Bps, etc, used for academic purpose

localhost:3000/api/

* Service to Dgi
  * user_data
    url: dgi/users/user-data
    params: {
      NumeroDocumento: 12345678
    }

* Service to Bps
  * user_info
    url: bps/users/user-info
    params: {
      NumeroDocumento: 12345678
    }
  * user_aporte
    url: bps/users/user-aporte
    params: {
      NumeroDocumento: 12345678
    }
