.class public Lk0/h0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/h0;->m3([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/h0;


# direct methods
.method public constructor <init>(Lk0/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/h0$e;->a:Lk0/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/h0$e;->a:Lk0/h0;

    invoke-static {v0}, Lk0/h0;->d3(Lk0/h0;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lk0/h0;->e3(Lk0/h0;Ljava/lang/String;)V

    return-void
.end method
