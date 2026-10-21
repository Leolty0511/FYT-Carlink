.class public Lp0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Lp0/d;

.field public static final c:[Lo1/x;

.field public static final d:Lo1/x;

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:Lo1/o;

.field public static i:I

.field public static j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lp0/d$a;

    invoke-direct {v0}, Lp0/d$a;-><init>()V

    sput-object v0, Lp0/b;->b:Lp0/d;

    const/16 v0, 0x32

    new-array v0, v0, [Lo1/x;

    .line 2
    sput-object v0, Lp0/b;->c:[Lo1/x;

    .line 3
    new-instance v0, Lo1/x;

    invoke-direct {v0}, Lo1/x;-><init>()V

    sput-object v0, Lp0/b;->d:Lo1/x;

    const/4 v0, -0x1

    .line 4
    sput v0, Lp0/b;->f:I

    const/4 v0, 0x0

    .line 5
    sput v0, Lp0/b;->i:I

    .line 6
    sput v0, Lp0/b;->j:I

    return-void
.end method
