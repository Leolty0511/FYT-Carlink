.class public Ll0/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ll0/a;

.field public static b:I

.field public static c:I

.field public static d:Z

.field public static e:Lo1/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll0/a;

    invoke-direct {v0}, Ll0/a;-><init>()V

    sput-object v0, Ll0/z;->a:Ll0/a;

    const/4 v0, 0x0

    .line 2
    sput v0, Ll0/z;->b:I

    .line 3
    sput v0, Ll0/z;->c:I

    .line 4
    sput-boolean v0, Ll0/z;->d:Z

    return-void
.end method
