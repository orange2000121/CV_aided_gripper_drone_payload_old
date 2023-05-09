#include <iostream>
#include <libmemcached/memcached.h>

using namespace std;

#ifdef __cplusplus
extern "C" {
#endif

class ArucoLocation
{
public:
    ArucoLocation()
    {
        memcached_server_st *memcached_servers_parse(char *server_strings);
        this->memc = memcached_create(NULL);

        this->servers = memcached_server_list_append(this->servers, "localhost", 11211, &this->rc);
        this->rc = memcached_server_push(this->memc, this->servers);

        if (this->rc == MEMCACHED_SUCCESS)
            cout << "Added server successfully" << endl;
        else
            cout << "Couldn't get value: " << memcached_strerror(this->memc, this->rc) << endl;
    }
    /*
    if return 0, it means that the value is not in the cache
    */
    void getLocation(double *arr)
    {
        size_t value_length;
        uint32_t flags;

        double x = memGet("x");
        double y = memGet("y");
        double z = memGet("z");
        arr[0] = x;
        arr[1] = y;
        arr[2] = z;
    }

private:
    memcached_server_st *servers = NULL;
    memcached_st *memc;
    memcached_return rc;

    double memGet(char *key)
    {
        size_t value_length;
        uint32_t flags;
        char *return_value = memcached_get(memc, key, strlen(key), &value_length, &flags, &rc);
        if (rc == MEMCACHED_SUCCESS)
        {   
            if(return_value == "null")
                return 0;
            return std::stod(return_value);
        }
        return 0;
    }
};

#ifdef __cplusplus
}
#endif