.class public Lo0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo1/y;

.field public static final b:Lo1/y;

.field public static final c:Lo1/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo1/y;

    invoke-direct {v0}, Lo1/y;-><init>()V

    sput-object v0, Lo0/f;->a:Lo1/y;

    .line 2
    new-instance v0, Lo1/y;

    invoke-direct {v0}, Lo1/y;-><init>()V

    sput-object v0, Lo0/f;->b:Lo1/y;

    .line 3
    new-instance v0, Lo1/y;

    invoke-direct {v0}, Lo1/y;-><init>()V

    sput-object v0, Lo0/f;->c:Lo1/y;

    return-void
.end method
