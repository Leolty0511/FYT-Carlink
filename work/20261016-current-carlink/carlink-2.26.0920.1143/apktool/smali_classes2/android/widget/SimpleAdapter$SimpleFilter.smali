.class Landroid/widget/SimpleAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SimpleAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/SimpleAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;)V

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 13

    .line 1
    new-instance v0, Landroid/widget/Filter$FilterResults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v3, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    .line 19
    .line 20
    invoke-static {v3}, Landroid/widget/SimpleAdapter;->access$200(Landroid/widget/SimpleAdapter;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/widget/SimpleAdapter;->access$102(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    :cond_0
    if-eqz p1, :cond_6

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_4

    .line 39
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    .line 48
    .line 49
    invoke-static {v1}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    move v5, v4

    .line 64
    :goto_0
    if-ge v5, v2, :cond_5

    .line 65
    .line 66
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Ljava/util/Map;

    .line 71
    .line 72
    if-eqz v6, :cond_4

    .line 73
    .line 74
    iget-object v7, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    .line 75
    .line 76
    invoke-static {v7}, Landroid/widget/SimpleAdapter;->access$300(Landroid/widget/SimpleAdapter;)[I

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    array-length v7, v7

    .line 81
    move v8, v4

    .line 82
    :goto_1
    if-ge v8, v7, :cond_4

    .line 83
    .line 84
    iget-object v9, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    .line 85
    .line 86
    invoke-static {v9}, Landroid/widget/SimpleAdapter;->access$400(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    aget-object v9, v9, v8

    .line 91
    .line 92
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    check-cast v9, Ljava/lang/String;

    .line 97
    .line 98
    const-string v10, " "

    .line 99
    .line 100
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    array-length v10, v9

    .line 105
    move v11, v4

    .line 106
    :goto_2
    if-ge v11, v10, :cond_3

    .line 107
    .line 108
    aget-object v12, v9, v11

    .line 109
    .line 110
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    invoke-virtual {v12, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_2

    .line 119
    .line 120
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    iput-object v3, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_6
    :goto_4
    iget-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    .line 143
    .line 144
    invoke-static {p1}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 155
    .line 156
    :goto_5
    return-object v0
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    .line 2
    .line 3
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/List;

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/widget/SimpleAdapter;->access$202(Landroid/widget/SimpleAdapter;Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    iget p1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
