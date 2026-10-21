.class public Ln0/n1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/n1;->x3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/n1;


# direct methods
.method public constructor <init>(Ln0/n1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/n1$a;->a:Ln0/n1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "/dev/ttyS0"

    .line 1
    invoke-static {v0}, Lz/k;->h(Ljava/lang/String;)V

    return-void
.end method
