package com.sonyericsson.psm.sysmonservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ISysmonService extends IInterface {
    int getCameraLowTempBurnTimeoutSec() throws RemoteException;

    int getThermalLevelForCamera() throws RemoteException;

    int getThermalLevelForFs1seg() throws RemoteException;

    public static abstract class Stub extends Binder implements ISysmonService {
        private static final String DESCRIPTOR = "com.sonyericsson.psm.sysmonservice.ISysmonService";
        static final int TRANSACTION_getCameraLowTempBurnTimeoutSec = 3;
        static final int TRANSACTION_getThermalLevelForCamera = 1;
        static final int TRANSACTION_getThermalLevelForFs1seg = 2;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ISysmonService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof ISysmonService)) {
                return (ISysmonService) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    int _result = getThermalLevelForCamera();
                    reply.writeNoException();
                    reply.writeInt(_result);
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    int _result2 = getThermalLevelForFs1seg();
                    reply.writeNoException();
                    reply.writeInt(_result2);
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    int _result3 = getCameraLowTempBurnTimeoutSec();
                    reply.writeNoException();
                    reply.writeInt(_result3);
                    return true;
                case 1598968902:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements ISysmonService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.sonyericsson.psm.sysmonservice.ISysmonService
            public int getThermalLevelForCamera() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sonyericsson.psm.sysmonservice.ISysmonService
            public int getThermalLevelForFs1seg() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.sonyericsson.psm.sysmonservice.ISysmonService
            public int getCameraLowTempBurnTimeoutSec() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}