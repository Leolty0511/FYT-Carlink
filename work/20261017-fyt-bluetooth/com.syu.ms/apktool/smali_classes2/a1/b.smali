.class public La1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:La1/d;

.field public static final c:[I

.field public static final d:[I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:Z

.field public static l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La1/d$a;

    invoke-direct {v0}, La1/d$a;-><init>()V

    sput-object v0, La1/b;->b:La1/d;

    const/16 v0, 0x64

    const/4 v1, -0x1

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->q(II)[I

    move-result-object v0

    sput-object v0, La1/b;->c:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 3
    sput-object v0, La1/b;->d:[I

    .line 4
    sput v1, La1/b;->e:I

    sput v1, La1/b;->f:I

    const/4 v0, 0x0

    .line 5
    sput v0, La1/b;->j:I

    .line 6
    sput-boolean v0, La1/b;->k:Z

    const/16 v0, 0xff

    .line 7
    sput v0, La1/b;->l:I

    return-void
.end method
