.class Landroid/content/pm/BaseParceledListSlice$1;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/BaseParceledListSlice;

.field final synthetic val$N:I

.field final synthetic val$callFlags:I

.field final synthetic val$listElementClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/pm/BaseParceledListSlice;ILjava/lang/Class;I)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    iput p2, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    iput-object p3, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->access$000()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const-string p4, " of "

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->access$100()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v1, "Writing more @"

    .line 26
    .line 27
    invoke-static {v1, p1, p4}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    .line 32
    .line 33
    invoke-static {v1, v2, p2}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    iget p2, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    .line 37
    .line 38
    if-ge p1, p2, :cond_3

    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const/high16 v1, 0x10000

    .line 45
    .line 46
    if-ge p2, v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    .line 52
    .line 53
    invoke-static {p2}, Landroid/content/pm/BaseParceledListSlice;->access$200(Landroid/content/pm/BaseParceledListSlice;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iget-object v1, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Landroid/content/pm/BaseParceledListSlice;->access$300(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    .line 71
    .line 72
    iget v2, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$callFlags:I

    .line 73
    .line 74
    invoke-virtual {v1, p2, p3, v2}, Landroid/content/pm/BaseParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->access$000()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->access$100()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    const-string v1, "Wrote extra #"

    .line 88
    .line 89
    const-string v2, ": "

    .line 90
    .line 91
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v2, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    .line 96
    .line 97
    invoke-static {v2}, Landroid/content/pm/BaseParceledListSlice;->access$200(Landroid/content/pm/BaseParceledListSlice;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    iget p2, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    .line 119
    .line 120
    if-ge p1, p2, :cond_5

    .line 121
    .line 122
    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->access$000()Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_4

    .line 127
    .line 128
    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->access$100()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    const-string v1, "Breaking @"

    .line 133
    .line 134
    invoke-static {v1, p1, p4}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget p4, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    .line 139
    .line 140
    invoke-static {p1, p4, p2}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    const/4 p1, 0x0

    .line 144
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    .line 146
    .line 147
    :cond_5
    return v0
.end method
