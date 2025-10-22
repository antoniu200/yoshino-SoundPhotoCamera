package com.sonyericsson.cameracommon.mediasaving;

import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class StorageManagerProxy {
    private static Method mMethodGetVolumes;
    private static Class<?> mStorageTypeClass;
    private static HashMap<Object, StorageType> mStorageTypeInverseMap;
    private static HashMap<StorageType, Object> mStorageTypeMap;
    private StorageManager mStorageManager;

    public enum StorageType {
        INTERNAL,
        EXTERNAL_CARD,
        EXTERNAL_USB,
        UNKNOWN
    }

    static {
        mMethodGetVolumes = null;
        mStorageTypeClass = null;
        mStorageTypeMap = null;
        mStorageTypeInverseMap = null;
        try {
            mMethodGetVolumes = StorageManager.class.getMethod("getVolumes", new Class[0]);
            try {
                mStorageTypeClass = Class.forName("android.os.storage.StorageManager$StorageType");
                if (mStorageTypeClass.getEnumConstants() != null) {
                    for (Object value : mStorageTypeClass.getEnumConstants()) {
                        StorageType[] storageTypeArrValues = StorageType.values();
                        int length = storageTypeArrValues.length;
                        int i = 0;
                        while (true) {
                            if (i < length) {
                                StorageType key = storageTypeArrValues[i];
                                if (!key.name().equals(value.toString())) {
                                    i++;
                                } else {
                                    if (mStorageTypeMap == null) {
                                        mStorageTypeMap = new HashMap<>();
                                        mStorageTypeInverseMap = new HashMap<>();
                                    }
                                    mStorageTypeMap.put(key, value);
                                    mStorageTypeInverseMap.put(value, key);
                                }
                            }
                        }
                    }
                }
                if (mStorageTypeMap == null || (!mStorageTypeMap.isEmpty() && mStorageTypeMap.size() != StorageType.values().length)) {
                    throw new RuntimeException("Support StorageType is not expected");
                }
            } catch (ClassNotFoundException e) {
            }
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static StorageManagerProxy createProxy(StorageManager storageManager) {
        return new StorageManagerProxy(storageManager);
    }

    private StorageManagerProxy(StorageManager storageManager) {
        this.mStorageManager = storageManager;
    }

    @NonNull
    public List<VolumeInfo> getVolumes() {
        try {
            return (List) mMethodGetVolumes.invoke(this.mStorageManager, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }
}