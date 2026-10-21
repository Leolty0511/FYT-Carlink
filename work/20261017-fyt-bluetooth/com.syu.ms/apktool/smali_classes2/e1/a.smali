.class public Le1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Le1/l;

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le1/l;

    invoke-direct {v0}, Le1/l;-><init>()V

    sput-object v0, Le1/a;->b:Le1/l;

    return-void
.end method
