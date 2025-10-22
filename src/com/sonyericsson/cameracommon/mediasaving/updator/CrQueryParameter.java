package com.sonyericsson.cameracommon.mediasaving.updator;

/* loaded from: classes.dex */
public final class CrQueryParameter {
    public String[] projection = null;
    public String where = null;
    public String[] selectionArgs = null;
    public String sortOrder = null;
    public int limit = 0;
    public int offset = 0;

    public String toString() {
        StringBuilder builder = new StringBuilder();
        if (this.projection != null) {
            builder.append("project:[");
            for (String item : this.projection) {
                builder.append(item + ",");
            }
            builder.append("] ");
        }
        if (this.where != null) {
            builder.append("where:" + this.where + " ");
        }
        if (this.selectionArgs != null) {
            builder.append("selectionarg:[");
            for (String item2 : this.selectionArgs) {
                builder.append(item2 + ",");
            }
            builder.append("] ");
        }
        if (this.sortOrder != null) {
            builder.append("sort:" + this.sortOrder + " ");
        }
        builder.append("limit:" + this.limit + " ");
        builder.append("offset:" + this.offset + " ");
        return builder.toString();
    }
}