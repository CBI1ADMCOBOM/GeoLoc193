// roles.ts

type Role = 'Administrador' | 'Supervisor' | 'Atendente' | 'Inclusor';

type Permissions = {
    [key in Role]: string[];
};

const rolePermissions: Permissions = {
    Administrador: ['create', 'read', 'update', 'delete'],
    Supervisor: ['read', 'update'],
    Atendente: ['read'],
    Inclusor: ['create', 'read'],
};

export { Role, Permissions, rolePermissions };