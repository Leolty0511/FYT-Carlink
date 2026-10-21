.class public Ln0/f0$a;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/f0;->j3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ln0/f0;


# direct methods
.method public constructor <init>(Ln0/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/f0$a;->e:Ln0/f0;

    invoke-direct {p0}, Lc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 0

    const-string p1, "com.vietmap.assistant"

    .line 1
    invoke-static {p1}, Lo1/u;->g(Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public c(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
