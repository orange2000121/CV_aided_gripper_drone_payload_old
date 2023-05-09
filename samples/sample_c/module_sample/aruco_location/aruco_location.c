#include <libmemcached/memcached.h>

double getMemData(char *key, memcached_st *memc, memcached_return rc);
void getLocation(double *arr)
{
    memcached_server_st *servers = NULL;
    memcached_st *memc;
    memcached_return rc;
    // memcached_server_st *memcached_servers_parse(char *server_strings);
    memc = memcached_create(NULL);

    servers = memcached_server_list_append(servers, "localhost", 11211, &rc);
    rc = memcached_server_push(memc, servers);

    // if (rc == MEMCACHED_SUCCESS)
    //     cout << "Added server successfully" << endl;
    // else
    //     cout << "Couldn't get value: " << memcached_strerror(memc, rc) << endl;

    size_t value_length;
    uint32_t flags;

    double x = getMemData("x", memc, rc);
    double y = getMemData("y", memc, rc);
    double z = getMemData("z", memc, rc);
    arr[0] = x;
    arr[1] = y;
    arr[2] = z;
}

double getMemData(char *key, memcached_st *memc, memcached_return rc)
{
    size_t value_length;
    uint32_t flags;
    char *return_value = memcached_get(memc, key, strlen(key), &value_length, &flags, &rc);
    if (rc == MEMCACHED_SUCCESS)
    {
        if (return_value == "null")
            return 0;
        return strtod(return_value, NULL);
    }
    return 0;
}