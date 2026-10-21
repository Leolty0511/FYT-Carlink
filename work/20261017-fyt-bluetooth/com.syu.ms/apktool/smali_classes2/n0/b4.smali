.class public Ln0/b4;
.super Ln0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public L3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/a;->L3()V

    const/4 v0, 0x0

    .line 2
    sput v0, Lh0/c;->j0:I

    const-string v0, "DAIS"

    .line 3
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x143

    .line 4
    sput v0, Lm1/a;->d:I

    .line 5
    const-class v0, Lz0/c;

    const-string v1, "default"

    invoke-static {v1, v0}, Lz0/d;->f(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
