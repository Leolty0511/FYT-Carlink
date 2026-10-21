.class public Lv0/l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv0/l;->M2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv0/l;


# direct methods
.method public constructor <init>(Lv0/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv0/l$d;->a:Lv0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/l$d;->a:Lv0/l;

    invoke-static {v0}, Lv0/l;->O2(Lv0/l;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lv0/l;->P2([B)V

    return-void
.end method
