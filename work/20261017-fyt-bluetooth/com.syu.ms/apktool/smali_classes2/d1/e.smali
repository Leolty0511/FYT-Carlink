.class public Ld1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lo1/y;

.field public static b:Lo1/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo1/y;

    invoke-direct {v0}, Lo1/y;-><init>()V

    sput-object v0, Ld1/e;->a:Lo1/y;

    .line 2
    new-instance v0, Lo1/y;

    invoke-direct {v0}, Lo1/y;-><init>()V

    sput-object v0, Ld1/e;->b:Lo1/y;

    return-void
.end method
