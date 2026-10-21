.class public Ln0/f3;
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
    .locals 1

    const-string v0, "HAOD"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x121

    .line 2
    sput v0, Lm1/a;->d:I

    return-void
.end method
