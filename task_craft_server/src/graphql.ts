
/*
 * -------------------------------------------------------
 * THIS FILE WAS AUTOMATICALLY GENERATED (DO NOT MODIFY)
 * -------------------------------------------------------
 */

/* tslint:disable */
/* eslint-disable */

export class CreateTaskInput {
    title: string;
    description: string;
}

export class UpdateTaskInput {
    title?: Nullable<string>;
    description?: Nullable<string>;
    id: string;
}

export class CreateDeviceUuidInput {
    deviceType: string;
    osName?: Nullable<string>;
    osVersion?: Nullable<string>;
    deviceModel?: Nullable<string>;
    isPhysicalDevice?: Nullable<boolean>;
    appVersion?: Nullable<string>;
    location?: Nullable<LocationInput>;
    ipAddress?: Nullable<string>;
}

export class LocationInput {
    lat: string;
    long: string;
}

export class RequestOtpInput {
    email: string;
    deviceUuid: string;
}

export class Task {
    _id: string;
    title: string;
    description: string;
}

export class Auth {
    exampleField: number;
}

export class DeviceUuId {
    deviceUuId: string;
}

export abstract class IQuery {
    abstract health(): string | Promise<string>;

    abstract task(): Nullable<Task[]> | Promise<Nullable<Task[]>>;

    abstract taskById(id: string): Nullable<Task> | Promise<Nullable<Task>>;
}

export abstract class IMutation {
    abstract createTask(createTaskInput: CreateTaskInput): Task | Promise<Task>;

    abstract updateTask(updateTaskInput: UpdateTaskInput): Task | Promise<Task>;

    abstract removeTask(id: string): Task | Promise<Task>;

    abstract createDeviceUuid(createDeviceUuidInput: CreateDeviceUuidInput): DeviceUuId | Promise<DeviceUuId>;

    abstract reqOtp(requestOtpInput: RequestOtpInput): Auth | Promise<Auth>;
}

type Nullable<T> = T | null;
