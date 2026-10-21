.class public final synthetic Landroid/telecom/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/telecom/Call$Callback;

.field public final synthetic c:Landroid/telecom/Call;

.field public final synthetic d:Z

.field public final synthetic e:Landroid/telecom/Call$RttCall;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/b;->b:Landroid/telecom/Call$Callback;

    iput-object p2, p0, Landroid/telecom/b;->c:Landroid/telecom/Call;

    iput-boolean p3, p0, Landroid/telecom/b;->d:Z

    iput-object p4, p0, Landroid/telecom/b;->e:Landroid/telecom/Call$RttCall;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-boolean v0, p0, Landroid/telecom/b;->d:Z

    iget-object v1, p0, Landroid/telecom/b;->e:Landroid/telecom/Call$RttCall;

    iget-object v2, p0, Landroid/telecom/b;->b:Landroid/telecom/Call$Callback;

    iget-object v3, p0, Landroid/telecom/b;->c:Landroid/telecom/Call;

    invoke-static {v2, v3, v0, v1}, Landroid/telecom/Call;->d(Landroid/telecom/Call$Callback;Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V

    return-void
.end method
