.class Lcom/google/android/projection/sink/sensors/SimpleObdSensor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/sensors/SimpleObdSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$4;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$4;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$1700(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)V

    return-void
.end method
