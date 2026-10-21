.class public Lq0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Lq0/d;

.field public static final c:[Lo1/x;

.field public static final d:Lo1/x;

.field public static e:I

.field public static f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq0/d$a;

    invoke-direct {v0}, Lq0/d$a;-><init>()V

    sput-object v0, Lq0/b;->b:Lq0/d;

    const/16 v0, 0xa

    new-array v0, v0, [Lo1/x;

    .line 2
    sput-object v0, Lq0/b;->c:[Lo1/x;

    .line 3
    new-instance v0, Lo1/x;

    invoke-direct {v0}, Lo1/x;-><init>()V

    sput-object v0, Lq0/b;->d:Lo1/x;

    const/16 v0, 0x445c

    .line 4
    sput v0, Lq0/b;->f:I

    return-void
.end method
