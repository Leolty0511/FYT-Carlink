.class public Lk0/kt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/kt;->U2([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/kt;


# direct methods
.method public constructor <init>(Lk0/kt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/kt$a;->a:Lk0/kt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0x3e8

    .line 1
    sput v0, Lk0/kt;->M:I

    const-string v0, "\u59dd\uff45\u6e6a\u93b7\u75af\u7909Log\u93c1\u7248\u5d41"

    .line 2
    invoke-static {v0}, Lk0/kt;->u3(Ljava/lang/String;)V

    return-void
.end method
